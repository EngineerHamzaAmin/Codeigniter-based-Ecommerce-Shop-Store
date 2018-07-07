<?php

class Webpages extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }



    function create(){
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $update_id=$this->uri->segment(3);
        $submit=$this->input->post('submit',TRUE);


        if($submit=='Submit'){
            //process the form
            $this->form_validation->set_rules('page_title','Page Title','required|max_length[240]');
            $this->form_validation->set_rules('page_content','Page Content','required');
            if($this->form_validation->run()==TRUE){

                //get data and insert it in database
                $data=$this->fetch_data_from_post();
                $data['page_url']= url_title($data['page_title']);

                if(is_numeric($update_id)){

                    if($update_id<3){
                        unset($data['page_url']);
                    }
                    //update records
                    $this->_update($update_id,$data);
                    $flash_msg='Page details Updated Successfully';
                    $value="<div class='alert alert-success' role='alert'>".$flash_msg."</div>";
                    $this->session->set_flashdata('item',$value);
                }else{
                    //insert new data
                    $this->_insert($data);
                    $update_id=$this->get_max();
                    $flash_msg='Page Created Successfully';
                    $value="<div class='alert alert-success' role='alert'>".$flash_msg."</div>";
                    $this->session->set_flashdata('item',$value);
                    redirect("webpages/create/$update_id");
                }
            }
        } elseif($submit=='Cancel'){
            redirect('webpages/manage');
        }

        if(is_numeric($update_id)&& ($submit != 'Submit')){
            $data=$this->fetch_data_from_db($update_id);
        }else{
            $data=$this->fetch_data_from_post();
        }

        if(!is_numeric($update_id)){
            $data['headline']='Create New Webpage';
        }else{
            $data['headline']='Update Page Details';
        }

        $data['flash_data']=$this->session->flashdata('item');
        $data["update_id"]=$update_id;
        $data['view_file']='create';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function _process_delete($update_id){
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //delete the page
        $this->_delete($update_id);

    }

    function delete($update_id){
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $submit=$this->input->post('submit',TRUE);

        if($submit=="Cancel"){
            redirect("webpages/create/$update_id");
        } else{
            $this->_process_delete($update_id);

            $flash_msg='Page Deleted  Successfully';
            $value="<div class='alert alert-danger' role='alert'>".$flash_msg."</div>";
            $this->session->set_flashdata('item',$value);
            redirect("webpages/manage");
        }

    }


    function deleteConf($update_id){
        //site security and update id checking
        if(!is_numeric($update_id) || $update_id<3){
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

    function fetch_data_from_post(){

        $data['page_title']=$this->input->post('page_title',TRUE);
        $data['page_keywords']=$this->input->post('page_keywords',TRUE);
        $data['page_description']=$this->input->post('page_description',TRUE);
        $data['page_content']=$this->input->post('page_content',TRUE);
        return $data;
    }

    function fetch_data_from_db($update_id){
        //site security checking
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $query=$this->get_where($update_id)->result();
        foreach($query as $row){
            $data['page_title']=$row->page_title;
            $data['page_url']=$row->page_url;
            $data['page_keywords']=$row->page_keywords;
            $data['page_content']=$row->page_content;
            $data['page_description']=$row->page_description;
        }
        if(!isset($data)){
            $data='';
        }
        return $data;
    }


    function manage(){
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();
        $data['query']=$this->get("page_url");

        $data['flash_data']=$this->session->flashdata('item');
        $data['view_file']='manage';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function get($order_by)
    {
        $this->load->model('mdl_webpages');
        $query = $this->mdl_webpages->get($order_by);
        return $query;
    }

    function get_with_limit($limit, $offset, $order_by)
    {
        if ((!is_numeric($limit)) || (!is_numeric($offset))) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_webpages');
        $query = $this->mdl_webpages->get_with_limit($limit, $offset, $order_by);
        return $query;
    }

    function get_where($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_webpages');
        $query = $this->mdl_webpages->get_where($id);
        return $query;
    }

    function get_where_custom($col, $value)
    {
        $this->load->model('mdl_webpages');
        $query = $this->mdl_webpages->get_where_custom($col, $value);
        return $query;
    }

    function _insert($data)
    {
        $this->load->model('mdl_webpages');
        $this->mdl_webpages->_insert($data);
    }

    function _update($id, $data)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_webpages');
        $this->mdl_webpages->_update($id, $data);
    }

    function _delete($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_webpages');
        $this->mdl_webpages->_delete($id);
    }

    function count_where($column, $value)
    {
        $this->load->model('mdl_webpages');
        $count = $this->mdl_webpages->count_where($column, $value);
        return $count;
    }

    function get_max()
    {
        $this->load->model('mdl_webpages');
        $max_id = $this->mdl_webpages->get_max();
        return $max_id;
    }

    function _custom_query($mysql_query)
    {
        $this->load->model('mdl_webpages');
        $query = $this->mdl_webpages->_custom_query($mysql_query);
        return $query;
    }

}