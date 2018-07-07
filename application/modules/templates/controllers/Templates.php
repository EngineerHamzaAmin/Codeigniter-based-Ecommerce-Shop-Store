<?php
class Templates extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function _draw_top_nav_jqm($customer_id){
        $top_nav_btns =[
          ['text' => 'Home', 'icon' => 'home', 'btn_target_url' => base_url()],
          ['text' => 'Login', 'icon' => 'action', 'btn_target_url' => base_url("youraccount/login")],
          ['text' => 'Account', 'icon' => 'user', 'btn_target_url' => base_url("youraccount/welcome")],
          ['text' => 'Contact', 'icon' => 'phone', 'btn_target_url' => base_url("contactus")],
          ['text' => 'Basket', 'icon' => 'shop', 'btn_target_url' => base_url("cart")]
        ];

        if(is_numeric($customer_id) AND $customer_id>0){
            //customer is logged in
            unset($top_nav_btns['1']);
        } else {
            unset($top_nav_btns['2']);
        }

        $data['top_nav_btns'] = $top_nav_btns;
        $data['current_url'] = current_url();
        $this->load->view('top_nav_jqm', $data);

    }

    function _draw_breadcrumbs($data){
        //Note: For the breadcrumbs to work, $data must contain:
        //template, current_page_title, breadcrumbs_array
       $this->load->view('breadcrumbs_public_bootstrap',$data);
    }

    function test(){
        $data='';
        $this->admin($data);
    }

    function login($data){
        if(!isset($data['view_module'])){
            $data['view_module']=$this->uri->segment(1);
        }
        $this->load->view('login_page',$data);
    }

    function public_bootstrap($data){
        if(!isset($data['view_module'])){
            $data['view_module']=$this->uri->segment(1);
        }

        $this->load->module('site_security');
        $data['customer_id'] = $this->site_security->_get_user_id();

        $this->load->view('public_bootstrap',$data);
    }

    function admin($data){
        if(!isset($data['view_module'])){
            $data['view_module']=$this->uri->segment(1);
        }
        $this->load->view('admin',$data);
    }

    function public_jqm($data){
        if(!isset($data['view_module'])){
            $data['view_module']=$this->uri->segment(1);
        }

        $this->load->module('site_security');
        $data['customer_id'] = $this->site_security->_get_user_id();

        $this->load->view('public_jqm',$data);
    }
}