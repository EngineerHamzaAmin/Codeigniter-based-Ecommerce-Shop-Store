<?php

class Store_order_status extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function _get_dropdown_options(){
        $options[''] = "Order Submitted";
        $query = $this->get('status_title');
        foreach($query->result() as $row){
            $options[$row->id] = $row->status_title;
        }
        return $options;
    }

    function _get_status_title($update_id){
        $query = $this->get_where($update_id);
        foreach($query->result() as $row){
            $status_title = $row->status_title;
        }

        if(!isset($status_title)){
            $status_title = "Unknown";
        }
        return $status_title;
    }

    function _draw_left_nav_links(){
        $data['query_n'] = $this->get('status_title');
        $this->load->view('left_nav_links',$data);
    }

    function _make_sure_delete_allowed($update_id){
        //return true or false

        //do not allow if status option is associated with the order
        $mysql_query = "select * from store_orders where order_status=$update_id";
        $query = $this->_custom_query($mysql_query);
        $num_rows = $query->num_rows();

        if($num_rows>0){
            return FALSE;//Delete not allowed since it has accounts in the basket
        } else {
            return TRUE;
        }
    }

    function delete($update_id){
//        if(!is_numeric($update_id)){
//            redirect('site_security/not_allowed');
//        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $submit=$this->input->post('submit',TRUE);

        if($submit=="Cancel"){
            redirect("store_order_status/create/$update_id");
        } else{
            $allowed = $this->_make_sure_delete_allowed($update_id);
            if($allowed==FALSE){
                $flash_msg='You cannot delete this order status option because it is at least connected to one order';
                $value="<div class='alert alert-warning' role='alert'>".$flash_msg."</div>";
                $this->session->set_flashdata('account',$value);
                redirect("store_order_status/manage");
            }
            $this->_delete($update_id);
            $flash_msg='Order Status Option Deleted  Successfully';
            $value="<div class='alert alert-danger' role='alert'>".$flash_msg."</div>";
            $this->session->set_flashdata('item',$value);
            redirect("store_order_status/manage");
        }

    }


    function deleteConf($update_id){
        //site security and update id checking
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }

        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $data['headline']="Confirm Delete";
        $data["update_id"]=$update_id;
        $data['view_file']='deleteConf';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function fetch_data_from_post()
    {
        $data['status_title'] = $this->input->post('status_title', TRUE);
        return $data;
    }

    function fetch_data_from_db($update_id)
    {
        //site security checking
        if (!is_numeric($update_id)) {
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $query = $this->get_where($update_id)->result();
        foreach ($query as $row) {
            $data['status_title'] = $row->status_title;
        }
        if (!isset($data)) {
            $data = '';
        }
        return $data;
    }


    function create()
    {
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $update_id = $this->uri->segment(3);
        $submit = $this->input->post('submit', TRUE);


        if ($submit == 'Submit') {
            //process the form
            $this->form_validation->set_rules('status_title', 'Status Title', 'required');

            if ($this->form_validation->run() == TRUE) {

                //get data and insert it in database
                $data = $this->fetch_data_from_post();
                if (is_numeric($update_id)) {
                    //update records
                    $this->_update($update_id, $data);
                    $flash_msg = 'Order Status Option details Updated Successfully';
                    $value = "<div class='alert alert-success' role='alert'>" . $flash_msg . "</div>";
                    $this->session->set_flashdata('item', $value);
                } else {
                    //insert new data
                    $this->_insert($data);
                    $update_id = $this->get_max();
                    $flash_msg = 'Order Status Option added Successfully';
                    $value = "<div class='alert alert-success' role='alert'>" . $flash_msg . "</div>";
                    $this->session->set_flashdata('item', $value);
                    redirect("store_order_status/create/$update_id");
                }
            }
        } elseif ($submit == 'Cancel') {
            redirect('store_order_status/manage');
        }

        if (is_numeric($update_id) && ($submit != 'Submit')) {
            $data = $this->fetch_data_from_db($update_id);
        } else {
            $data = $this->fetch_data_from_post();
        }

        if (!is_numeric($update_id)) {
            $data['headline'] = 'Add New Order Status Option';
        } else {
            $data['headline'] = 'Update Order Status Option';
        }

        $data['flash_data'] = $this->session->flashdata('item');
        $data["update_id"] = $update_id;
        $data['view_file'] = 'create';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function manage()
    {
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();
        $data['query'] = $this->get("status_title");

        $data['flash_data'] = $this->session->flashdata('item');
        $data['view_file'] = 'manage';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function get($order_by)
    {
        $this->load->model('mdl_store_order_status');
        $query = $this->mdl_store_order_status->get($order_by);
        return $query;
    }

    function get_with_limit($limit, $offset, $order_by)
    {
        if ((!is_numeric($limit)) || (!is_numeric($offset))) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_order_status');
        $query = $this->mdl_store_order_status->get_with_limit($limit, $offset, $order_by);
        return $query;
    }

    function get_where($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_order_status');
        $query = $this->mdl_store_order_status->get_where($id);
        return $query;
    }

    function get_where_custom($col, $value)
    {
        $this->load->model('mdl_store_order_status');
        $query = $this->mdl_store_order_status->get_where_custom($col, $value);
        return $query;
    }

    function get_with_double_condition($col1, $val1, $col2, $val2)
    {
        $this->load->model('mdl_store_order_status');
        $query = $this->mdl_store_order_status->get_with_double_condition($col1, $val1, $col2, $val2);
        return $query;
    }

    function _insert($data)
    {
        $this->load->model('mdl_store_order_status');
        $this->mdl_store_order_status->_insert($data);
    }

    function _update($id, $data)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_order_status');
        $this->mdl_store_order_status->_update($id, $data);
    }

    function _delete($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_order_status');
        $this->mdl_store_order_status->_delete($id);
    }

    function count_where($column, $value)
    {
        $this->load->model('mdl_store_order_status');
        $count = $this->mdl_store_order_status->count_where($column, $value);
        return $count;
    }

    function get_max()
    {
        $this->load->model('mdl_store_order_status');
        $max_id = $this->mdl_store_order_status->get_max();
        return $max_id;
    }

    function _custom_query($mysql_query)
    {
        $this->load->model('mdl_store_order_status');
        $query = $this->mdl_store_order_status->_custom_query($mysql_query);
        return $query;
    }


}