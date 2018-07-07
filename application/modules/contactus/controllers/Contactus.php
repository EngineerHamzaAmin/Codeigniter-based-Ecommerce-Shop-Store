<?php

class Contactus extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function submit(){

        $submit= $this->input->post('submit',TRUE);
        if($submit=='Submit'){
            $this->form_validation->set_rules('yourname','Your Name','required|max_length[60]');
            $this->form_validation->set_rules('telnum','Telephone Number','required|max_length[20]');
            $this->form_validation->set_rules('message','Message','required');
            $this->form_validation->set_rules('email','Email','required|valid_email');


            if($this->form_validation->run()==TRUE){

                //get data and insert it in database
                $posted_data=$this->fetch_data_from_post();
                $this->load->module('enquiries');
                $this->load->module('site_security');

                //insert the message
                $data['subject']='Contact Form';
                $data['message']=$this->build_msg($posted_data);
                $data['opened']=0;
                $data['sent_by']=0;
                $data['sent_to']=0;
                $data['date_created']=time();
                $data['urgent']=0;
                $data['code']= $this->site_security->generate_random_string(6);
                $this->enquiries->_insert($data);
                redirect("contactus/thankyou");
            } else{
                $this->index();
            }
        }
    }

    function build_msg($posted_data){
        $yourname = ucfirst($posted_data['yourname']);
        $msg = "$yourname Submitted the following information<br><br>";
        $msg .= "Name: $yourname<br>";
        $msg .= "Email: ".$posted_data['email']."<br>";
        $msg .= "Telephone Number: ".$posted_data['telnum']."<br>";
        $msg .= "Message: ".$posted_data['message']."<br>";
        return $msg;
    }
    

    function fetch_data_from_post(){
        $data['yourname']=$this->input->post('yourname',TRUE);
        $data['telnum']=$this->input->post('telnum',TRUE);
        $data['message']=$this->input->post('message',TRUE);
        $data['email']=$this->input->post('email',TRUE);
        return $data;
    }

    function index(){
        $this->load->module('site_settings');

        $is_mobile = $this->site_settings->is_mobile();
        $data = $this->fetch_data_from_post();
        $data['our_address'] = $this->site_settings->_get_our_address();
        $data['our_name'] = $this->site_settings->_get_our_name();
        $data['map_code'] = $this->site_settings->_get_map_code();
        $data['our_telnum'] = $this->site_settings->_get_our_telnum();
        $data['view_file'] = 'contactus';

        if($is_mobile==FALSE){
            $template = 'public_bootstrap';
        } else {
            $template = 'public_jqm';
            $data['view_file'] .= '_jqm';
        }
        $this->load->module('templates');
        $this->templates->$template($data);
    }

    function thankyou(){
        $this->load->module('site_settings');
        $is_mobile = $this->site_settings->is_mobile();

        $data['view_file'] = 'thankyou';
        if($is_mobile==FALSE){
            $template = 'public_bootstrap';
        } else {
            $template = 'public_jqm';
            $data['view_file'] .= '_jqm';

        }
        $this->load->module('templates');
        $this->templates->$template($data);
    }
}