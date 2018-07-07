<?php

class Dvilsf extends MX_Controller{

    function __construct(){
        parent::__construct();
        $this->form_validation->CI =& $this;
    }

    function index(){
        $data['username'] = $this->input->post('username',TRUE);
        $this->load->module('templates');
        $this->templates->login($data);
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
                $this->_in_you_go();
            } else{
                echo validation_errors();
            }
        }
    }

    function logout(){
        unset($_SESSION['is_admin']);
        redirect(base_url());
    }

    function _in_you_go(){
        //set a session variable
        $this->session->set_userdata('is_admin','1');

        //redirecting to admin panel home
        redirect('dashboard/home');
    }

    function username_check($str){
        $this->load->module('site_security');
        $this->load->module('Store_orderstatus');

        $error_msg = "You didn't enter correct username and/or password";
        $password = $this->input->post('pword',TRUE);

        $result = $this->site_security->_check_admin_login_details($str,$password);
        if($result == FALSE){
            $this->form_validation->set_message('username_check',$error_msg);
            return false;
        } else {
            return TRUE;
        }
    }



}