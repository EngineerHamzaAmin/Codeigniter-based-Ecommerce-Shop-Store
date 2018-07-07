<?php

class Youraccount extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->form_validation->CI =& $this;
    }

    function logout(){
        unset($_SESSION['user_id']);
        $this->load->module('site_cookies');
        $this->site_cookies->_destroy_cookie();
        redirect(base_url());
    }

    function welcome()
    {
        $this->load->module('site_security');
        $this->site_security->_make_sure_logged_in();
        $is_mobile = $this->site_security->is_mobile();

        if($is_mobile){
            $template = 'public_jqm';
        } else {
            $template = 'public_bootstrap';
        }
        $data['flash'] = $this->session->flashdata('item');
        $data['view_file'] = 'welcome';
        $this->load->module('templates');
        $this->templates->$template($data);
    }

    function submit_login()
    {
        $submit = $this->input->post('submit',TRUE);
        if ($submit == 'Submit') {

            $this->load->library('form_validation');
            //process the form
            $this->form_validation->set_rules('username', 'Username', 'required|min_length[5]|max_length[60]|callback_username_check');
            $this->form_validation->set_rules('pword', 'Password', 'required|min_length[7]|max_length[35]');

            if ($this->form_validation->run() == TRUE) {
                $col1 = 'username';
                $val1 = $this->input->post('username',TRUE);
                $col2 = 'email';
                $val2 = $this->input->post('username',TRUE);
                $query = $this->store_accounts->get_with_double_condition($col1,$val1,$col2,$val2);
                foreach($query->result() as $row){
                    $user_id = $row->id;
                }

                //Remember me process
                $remember_me = $this->input->post('remember', TRUE);

                if($remember_me == 'remember-me'){
                    $login_type = 'longterm';
                } else{
                    $login_type = 'shortterm';
                }

                $data['last_login'] = time();
                $this->store_accounts->_update($user_id,$data);
                //send him/her to the private page
                $this->_in_you_go($user_id,$login_type);
            } else{
                echo validation_errors();
            }
        }
    }

    function _in_you_go($user_id,$login_type){
        if($login_type == 'longterm'){
            $this->load->module('site_cookies');
            $this->site_cookies->_set_cookie($user_id);
        } else{
            $this->session->set_userdata('user_id',$user_id);
        }

        //attempt to get data to perform cart divert
        $this->_attempt_cart_divert($user_id);
        redirect('youraccount/welcome');
    }

    function _attempt_cart_divert($user_id){
        $this->load->module('store_basket');
        $customer_session_id = $this->session->session_id;

        $col1 = 'session_id';
        $val1 = $customer_session_id;
        $col2 = 'shopper_id';
        $val2 = 0;
        $query = $this->store_basket->get_with_double_condition($col1,$val1,$col2,$val2);
        $num_rows = $query->num_rows();

        if($num_rows>0){
            $mysql_query = "update store_basket set shopper_id = $user_id where session_id = $customer_session_id";
            $query = $this->store_basket->_custom_query($mysql_query);
            redirect('cart');
        }
    }

    function login(){
        $data['username'] = $this->input->post('username',TRUE);
        $this->load->module('templates');
        $this->templates->login($data);
    }

    function submit()
    {
        $submit = $this->input->post('submit',TRUE);
        if ($submit == 'Submit') {
            
            //process the form
            $this->form_validation->set_rules('username', 'Username', 'required|mFlength[5]|max_length[60]');
            $this->form_validation->set_rules('email', 'E-mail', 'required|max_length[120]|valid_email');
            $this->form_validation->set_rules('pword', 'Password', 'required|min_length[7]|max_length[35]');
            $this->form_validation->set_rules('repeat_pword', 'Repeat Password', 'required|matches[pword]');

            if ($this->form_validation->run() == TRUE) {

                $this->_process_create_account();
                $this->login();
            } else{
                $this->start();
            }
        }
    }

    function _process_create_account(){

        $this->load->module('Store_orderstatus');
        $data = $this->fetch_data_from_post();
        unset($data['repeat_pword']);

        $this->load->module('site_security');
        //FOr hashing password but currently i am leaving it as it is
        //$data['pword'] = $this->site_security->_hash_string($data['pword']);

        $this->store_accounts->_insert($data);
    }

    function fetch_data_from_post(){
        $data['username']=$this->input->post('username',TRUE);
        $data['email']=$this->input->post('email',TRUE);
        $data['pword']=$this->input->post('pword',TRUE);
        $data['repeat_pword']=$this->input->post('repeat_pword',TRUE);
        return $data;
    }
    

    function start()
    {
        $data = $this->fetch_data_from_post();
        $data['flash'] = $this->session->flashdata('item');
        $data['view_file'] = 'start';
        $this->load->module('templates');
        $this->templates->public_bootstrap($data);
    }

    function username_check($str){
        $this->load->module('site_security');
        $this->load->module('Store_orderstatus');
        $this->load->module('Store_accounts');

        $error_msg = "You didn't enter correct username and/or password";

        $col1 = 'username';
        $val1 = $str;
        $col2 = 'email';
        $val2 = $str;
        $query = $this->store_accounts->get_with_double_condition($col1,$val1,$col2,$val2);
        $num_rows = $query->num_rows();
        if($num_rows<1){
            $this->form_validation->set_message('username_check',$error_msg);
            return false;
        }

        foreach($query->result() as $row){
            $pword_on_table = $row->pword;
        }

        $pword = $this->input->post('pword',true);

        //verify current password with hashed password in the table
        //$result = $this->site_security->_verify_hash($pword,$pword_on_table);
        if($pword==$pword_on_table){
           return true;
        } else {
            $this->form_validation->set_message('username_check',$error_msg);
            return false;
        }
    }

}