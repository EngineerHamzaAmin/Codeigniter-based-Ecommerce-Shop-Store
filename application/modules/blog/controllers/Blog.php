<?php

class Blog extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function article($page_url){

        $data['page_details'] = $this->get_where_custom('page_url',$page_url)->row();


        $data['headline']="Article";
        $data['view_file']='article';
        $this->load->module('templates');
        $this->templates->public_bootstrap($data);
    }

    function _draw_feed_hp($is_mobile=FALSE){
        $this->load->helper('text');

        $mysql_query = "select * from blog order by date_published desc limit 0,3";
        $data['query'] = $this->_custom_query($mysql_query);

        if($is_mobile==FALSE){
            $view_file = 'feed_hp';
        } else {
            $view_file = 'feed_hp_jqm';
        }

        $this->load->view($view_file,$data);
    }
    function delete_image($update_id){
        //site security and update id checking
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //fetching data from the database
        $data=$this->fetch_data_from_db($update_id);
        //big and small pic names
        $picture=$data['picture'];

        //big and small pic paths
        $big_pic_path='./blog_pics/'.$picture;
        $small_pic = str_replace('.','_thumb.',$picture);
        $small_pic_path='./blog_pics/'.$small_pic;

        //deleting both type of pics if exist
        if(file_exists($big_pic_path)){
            unlink($big_pic_path);
        }
        if(file_exists($small_pic_path)){
            unlink($small_pic_path);
        }

        // updating big_pic and small_pic fields to null in the database
        unset($data);
        $data['picture']="";

        $flash_msg='Image Deleted Successfully';
        $value="<div class='alert alert-success' role='alert'>".$flash_msg."</div>";
        $this->session->set_flashdata('item',$value);

        $this->_update($update_id,$data);
        redirect('blog/create/'.$update_id);


    }

    function _generate_thumbnail($file_name, $thumbnail_name){
        $config['image_library'] = 'gd2';
        $config['source_image'] = './blog_pics/'.$file_name;
        $config['new_image'] = './blog_pics/'.$thumbnail_name;
        $config['maintain_ratio'] = TRUE;
        $config['width']         = 200;
        $config['height']       = 200;
        $this->load->library('image_lib', $config);
        $this->image_lib->resize();
    }

    function do_upload($update_id)
    {
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $submit=$this->input->post('submit',TRUE);
        if($submit == "Cancel"){

            redirect("blog/create/$update_id");
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();



        $config['upload_path']          = './blog_pics/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = 200;
        $config['max_width']            = 2024;
        $config['max_height']           = 1268;
        $config['file_name']           = $this->site_security->generate_random_string(16);

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('userfile'))
        {
            $data['error'] = array('error' => $this->upload->display_errors("<p style='color: red'>","</p>"));
            $data['headline']="Upload Error";
            $data["update_id"]=$update_id;
            $data['view_file']='upload_image';
            $this->load->module('templates');
            $this->templates->admin($data);

        }
        else
        {
            //upload successful
            $data = array('upload_data' => $this->upload->data());

            //generate thumbnail of the pic
            $upload_data=$data['upload_data'];
            $raw_name = $upload_data['raw_name'];
            $file_ext = $upload_data['file_ext'];
            
            //generate thumnail name
            $file_name=$upload_data['file_name'];
            $thumbnail_name=$raw_name.'_thumb'.$file_ext;

            $this->_generate_thumbnail($file_name, $thumbnail_name);

            //update database big_pic and small_pic path
            $update_data['picture']=$file_name;
            $this->_update($update_id,$update_data);

            //load upload success view
            $data['headline']="Upload Success";
            $data["update_id"]=$update_id;
            $data['view_file']='upload_success';
            $this->load->module('templates');
            $this->templates->admin($data);

        }
    }

    function upload_image($update_id){
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }


        $data['flash_data']=$this->session->flashdata('item');
        $data['headline']="Upload Image";
        $data["update_id"]=$update_id;
        $data['view_file']='upload_image';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function create(){
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        $update_id=$this->uri->segment(3);
        $submit=$this->input->post('submit',TRUE);


        if($submit=='Submit'){
            $this->load->module('timedate');
            //process the form
            $this->form_validation->set_rules('date_published','Date Published','required');
            $this->form_validation->set_rules('page_title','Page Title','required|max_length[240]');
            $this->form_validation->set_rules('page_content','Page Content','required');

            if($this->form_validation->run()==TRUE){

                //get data and insert it in database
                $data=$this->fetch_data_from_post();
                $data['page_url']= url_title($data['page_title']);

                //convert date to timestamp
                $data['date_published'] = $this->timedate->make_timestamp_from_datepicker_us($data['date_published']);

                if(is_numeric($update_id)){
                    //update records
                    $this->_update($update_id,$data);
                    $flash_msg='Blog Entry Details Updated Successfully';
                    $value="<div class='alert alert-success' role='alert'>".$flash_msg."</div>";
                    $this->session->set_flashdata('item',$value);
                }else{
                    //insert new data
                    $this->_insert($data);
                    $update_id=$this->get_max();
                    $flash_msg='Blog Entry Created Successfully';
                    $value="<div class='alert alert-success' role='alert'>".$flash_msg."</div>";
                    $this->session->set_flashdata('item',$value);
                    redirect("blog/create/$update_id");
                }
            }
        } elseif($submit=='Cancel'){
            redirect('blog/manage');
        }

        if(is_numeric($update_id)&& ($submit != 'Submit')){
            $data=$this->fetch_data_from_db($update_id);
        }else{
            $data=$this->fetch_data_from_post();
        }

        if(!is_numeric($update_id)){
            $data['headline']='Create New Blog Entry';
        }else{
            $data['headline']='Update Blog Entry Details';
        }

        if($data['date_published'] > 0){
            $data['date_published'] = date('m\/d\/Y', $data['date_published']);
//            $data['date_published'] =$this->timedate->get_nice_date($data['date_published'],'datepicker_us');
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
            redirect("blog/create/$update_id");
        } else{
            $this->_process_delete($update_id);

            $flash_msg='Blog Entry Deleted  Successfully';
            $value="<div class='alert alert-danger' role='alert'>".$flash_msg."</div>";
            $this->session->set_flashdata('item',$value);
            redirect("blog/manage");
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
        $data['date_published']=$this->input->post('date_published',TRUE);
        $data['author']=$this->input->post('author',TRUE);
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
            $data['date_published']=$row->date_published;
            $data['author']=$row->author;
            $data['picture']=$row->picture;
        }
        if(!isset($data)){
            $data='';
        }
        return $data;
    }


    function manage(){
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();
        $data['query']=$this->get("date_published desc");

        $data['flash_data']=$this->session->flashdata('item');
        $data['view_file']='manage';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function get($order_by)
    {
        $this->load->model('mdl_blog');
        $query = $this->mdl_blog->get($order_by);
        return $query;
    }

    function get_with_limit($limit, $offset, $order_by)
    {
        if ((!is_numeric($limit)) || (!is_numeric($offset))) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_blog');
        $query = $this->mdl_blog->get_with_limit($limit, $offset, $order_by);
        return $query;
    }

    function get_where($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_blog');
        $query = $this->mdl_blog->get_where($id);
        return $query;
    }

    function get_where_custom($col, $value)
    {
        $this->load->model('mdl_blog');
        $query = $this->mdl_blog->get_where_custom($col, $value);
        return $query;
    }

    function _insert($data)
    {
        $this->load->model('mdl_blog');
        $this->mdl_blog->_insert($data);
    }

    function _update($id, $data)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_blog');
        $this->mdl_blog->_update($id, $data);
    }

    function _delete($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_blog');
        $this->mdl_blog->_delete($id);
    }

    function count_where($column, $value)
    {
        $this->load->model('mdl_blog');
        $count = $this->mdl_blog->count_where($column, $value);
        return $count;
    }

    function get_max()
    {
        $this->load->model('mdl_blog');
        $max_id = $this->mdl_blog->get_max();
        return $max_id;
    }

    function _custom_query($mysql_query)
    {
        $this->load->model('mdl_blog');
        $query = $this->mdl_blog->_custom_query($mysql_query);
        return $query;
    }

}