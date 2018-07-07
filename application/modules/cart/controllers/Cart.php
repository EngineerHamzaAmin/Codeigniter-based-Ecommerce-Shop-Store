<?php

class Cart extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function _generate_guest_account($checkout_token){
        //customer has selected 'No Thanks'
        $this->load->module('site_security');
        $this->load->module('store_accounts');
        $customer_session_id = $this->_get_session_id_from_token($checkout_token);

        //create guest account
        $ref = $this->site_security->generate_random_string(4);
        $data['username'] = 'Guest '.$ref;
        $data['firstname'] = 'Guest';
        $data['lastname'] = 'Account';
        $data['date_made'] = time();
        $data['pword'] = $checkout_token;//lock the world out
        $this->store_accounts->_insert($data);

        //get the new  account ID
        $new_account_id = $this->store_accounts->get_max();

        //update the existing store_basket table
        $mysql_query = "update store_basket set shopper_id=$new_account_id where session_id=$customer_session_id";
        $query = $this->store_accounts->_custom_query($mysql_query);
    }

    function _check_and_get_session_id($checkout_token){
        $session_id = $this->_get_session_id_from_token($checkout_token);

        if($session_id==''){
            redirect(base_url());
        }

        //check to see if the session_id appears in the store_basket
        $this->load->module('store_basket');
        $query = $this->store_basket->get_where_custom('session_id',$session_id);
        $num_rows = $query->num_rows();

        if($num_rows<1){
            redirect(base_url());
        }
        return $session_id;
    }
    function _create_checkout_token($session_id){
        $this->load->module('site_security');
        $encrypted_string = $this->site_security->_encrypt_string($session_id);

        //remove doggy characters
        $checkout_token = str_replace('+','-plus-',$encrypted_string);
        $checkout_token = str_replace('/','-fwrd-',$checkout_token);
        $checkout_token = str_replace('=','-eqls-',$checkout_token);
        return $checkout_token;
    }

    function _get_session_id_from_token($checkout_token){
        $this->load->module('site_security');

        //remove doggy characters
        $session_id = str_replace('-plus-','+',$checkout_token);
        $session_id = str_replace('-fwrd-','/',$session_id);
        $session_id = str_replace('-eqls-','=',$session_id);

        $session_id = $this->site_security->_decrypt_string($session_id);

        return $session_id;
    }

    function submit_choice(){
        $submit = $this->input->post('submit',TRUE);
        if($submit=="No Thanks"){
            $checkout_token = $this->input->post('checkout_token',TRUE);
            $this->_generate_guest_account($checkout_token);
            redirect("cart/index/$checkout_token");
        } elseif($submit=="Yes - Let's Do It"){
            redirect('youraccount/start');
        }
        
    }

    function go_to_checkout(){
        $this->load->module('site_security');
        $shopper_id = $this->site_security->_get_user_id();
        if(!is_numeric($shopper_id)){
            redirect('cart');
        }

        $data['view_file'] = 'go_to_checkout';
        $this->load->module('templates');
        $this->templates->public_bootstrap($data);
    }

    function _draw_checkout_btn_real($query){
       $this->load->module('paypal');
       $this->paypal->_draw_checkout_btn($query);
    }

    function _draw_checkout_btn_fake($query){
        foreach($query->result() as $row){
            $session_id  = $row->session_id;
        }
        $data['checkout_token'] = $this->_create_checkout_token($session_id);
        $this->load->view('checkout_btn_fake',$data);
    }

    function _attempt_draw_checkout_btn($query){
        $data['query'] = $query;
        $this->load->module('site_security');
        $shopper_id = $this->site_security->_get_user_id();
        $third_bit = $this->uri->segment(3);
        if((!is_numeric($shopper_id) AND ($third_bit!=''))){
            $this->_draw_checkout_btn_fake($query);
        } else{
            $this->_draw_checkout_btn_real($query);
        }
    }

    function _draw_cart_contents($query , $user_type){
        $this->load->module('site_settings');
        $this->load->module('shipping');
        $data['currency_symbol'] = $this->site_settings->_get_currency_symbol();
        //Note: user_type could be public/admin
        if($user_type=='public'){
            $view_file = "cart_contents_public";
        } else {
            $view_file = "cart_contents_admin";
        }
        $data['shipping'] = $this->shipping->_get_shipping();
        $data['query'] = $query;
        $this->load->view($view_file,$data);
    }

    function index()
    {

        $this->load->module('site_security');
        $shopper_id = $this->site_security->_get_user_id();

        $third_bit = $this->uri->segment(3);
        if($third_bit!=''){
            $session_id = $this->_check_and_get_session_id($third_bit);
        } else {
            $session_id = $this->session->session_id;
        }

        if (!is_numeric($shopper_id)) {
            $shopper_id = 0;
        }

        $table = 'store_basket';
        $data['query'] = $this->_fetch_cart_contents($session_id, $shopper_id, $table);
        $data['num_rows'] = $data['query']->num_rows();
        $data['showing_statement'] = $this->_get_showing_statement($data['num_rows']);
        $data['flash'] = $this->session->flashdata('item');
        $data['view_file'] = 'cart';
        $this->load->module('templates');
        $this->templates->public_bootstrap($data);
    }

    function _get_showing_statement($num_items)
    {
        if($num_items==1){
            $showing_statement = "You have one item in your shopping basket";
        } else {
            $showing_statement = "You have ".$num_items." items in your shopping basket";
        }
        return $showing_statement;
    }

    function _fetch_cart_contents($session_id, $shopper_id, $table)
    {
        $this->load->module('store_basket');
        $mysql_query = "
            select $table.*,
                store_items.small_pic,
                store_items.small_pic
            from $table left join store_items on $table.item_id = store_items.id
        ";
        
        if($shopper_id>0){
            $where_condition = " where $table.shopper_id = '$shopper_id'";
        } else {
            $where_condition = " where $table.session_id = '$session_id'";
        }
        $mysql_query .= $where_condition;
        $query = $this->store_basket->_custom_query($mysql_query);
        return $query;
    }

    function _draw_add_to_cart($item_id)
    {

        //getting the color options from the store_item_colors table
        $submitted_color = $this->input->post('submitted_color', TRUE);
        if ($submitted_color == "") {
            $color_options[""] = "Select...";
        }

        $this->load->module('store_item_colors');
        $query = $this->store_item_colors->get_where_custom('item_id', $item_id);

        $data['submitted_color'] = $submitted_color;
        $data['num_colors'] = $query->num_rows();
        foreach ($query->result() as $row) {
            $color_options[$row->id] = $row->color;
        }

//fetch the size options
//getting the color options from the store_item_colors table
        $submitted_size = $this->input->post('submitted_size', TRUE);
        if ($submitted_size == "") {
            $size_options[""] = "Select...";
        }
        $this->load->module('store_item_sizes');
        $query = $this->store_item_sizes->get_where_custom('item_id', $item_id);

        $data['submitted_size'] = $submitted_size;
        $data['num_sizes'] = $query->num_rows();
        foreach ($query->result() as $row) {
            $size_options[$row->id] = $row->size;
        }

        $data['size_options'] = $size_options;
        $data['color_options'] = $color_options;
        $data["item_id"] = $item_id;
        $this->load->view('add_to_cart', $data);
    }

}