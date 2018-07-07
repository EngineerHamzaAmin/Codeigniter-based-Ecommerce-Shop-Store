<?php

class Store_cat_assign extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function delete($update_id){
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //getting the item id for reaccessing the colors related to that item because the update id is
        //actually the color id so if we delete that id then we would not be able to access the colors
        $query=$this->get_where($update_id);
        foreach($query->result() as $row){
            $item_id=$row->item_id;
        }

        $this->_delete($update_id);

        $flash_msg='The Option Is Successfully Deleted';
        $value="<div class='alert alert-danger' role='alert'>".$flash_msg."</div>";
        $this->session->set_flashdata('item',$value);

        redirect("store_cat_assign/update/$item_id");
    }

    function submit($item_id){

        if(!is_numeric($item_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //getting the values of the buttons and then taking actions according to their values
        $submit=$this->input->post('submit',TRUE);
        $cat_id=trim($this->input->post("cat_id",TRUE));

        //if finished button is clicked then redirect to main update page
        if($submit=="Finished"){
            redirect("store_items/create/$item_id");
        } elseif($submit=="Submit"){//if submit button is clicked then add color to the database

            if($cat_id!=""){
                $data["item_id"]=$item_id;
                $data["cat_id"]=$cat_id;
                $this->_insert($data);

                $this->load->module("store_categories");
                $cat_title = $this->store_categories->_get_cat_title($cat_id);
                //setting flash data on successful insertion
                $flash_msg='The item was successfully assign to the'.$cat_title.' category';
                $value="<div class='alert alert-success' role='alert'>".$flash_msg."</div>";
                $this->session->set_flashdata('item',$value);
            }

        }
        //at last redirect to the same page again
        redirect("store_cat_assign/update/$item_id");
    }

    function update($item_id){

        if(!is_numeric($item_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //get an array of all sub categories on the site
        $this->load->module("store_categories");
        $sub_categories = $this->store_categories->_get_all_sub_cats_for_dropdown();

        //get an array of all assigned categories

        $query = $this->get_where_custom('item_id',$item_id);
        $data['query'] = $query;
        $data['num_rows'] = $query->num_rows();
        foreach($query->result() as $row){
            $cat_title = $this->store_categories->_get_cat_title($row->cat_id);
            $parent_cat_title = $this->store_categories->_get_parent_cat_title($row->cat_id);
            $assigned_categories[$row->cat_id] = $parent_cat_title.' > '.$cat_title;
        }



        if(!isset($assigned_categories)){
            $assigned_categories = "";
        } else{
            //the item has been assigned to at least one category
            $sub_categories = array_diff($sub_categories,$assigned_categories);
        }


        //sending information to the update view of the store_cat_assign module
        $data['options'] = $sub_categories;
        $data['cat_id'] = $this->input->post('cat_id',TRUE);
        $data['flash_data']=$this->session->flashdata('item');
        $data['headline']="Category Assign";
        $data["item_id"]=$item_id;
        $data['view_file']='update';
        $this->load->module('templates');
        $this->templates->admin($data);
    }
    function get($order_by)
    {
        $this->load->model('mdl_store_cat_assign');
        $query = $this->mdl_store_cat_assign->get($order_by);
        return $query;
    }

    function get_with_limit($limit, $offset, $order_by)
    {
        if ((!is_numeric($limit)) || (!is_numeric($offset))) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_cat_assign');
        $query = $this->mdl_store_cat_assign->get_with_limit($limit, $offset, $order_by);
        return $query;
    }

    function get_where($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_cat_assign');
        $query = $this->mdl_store_cat_assign->get_where($id);
        return $query;
    }

    function get_where_custom($col, $value)
    {
        $this->load->model('mdl_store_cat_assign');
        $query = $this->mdl_store_cat_assign->get_where_custom($col, $value);
        return $query;
    }

    function _insert($data)
    {
        $this->load->model('mdl_store_cat_assign');
        $this->mdl_store_cat_assign->_insert($data);
    }

    function _update($id, $data)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_cat_assign');
        $this->mdl_store_cat_assign->_update($id, $data);
    }

    function _delete($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_cat_assign');
        $this->mdl_store_cat_assign->_delete($id);
    }

    function count_where($column, $value)
    {
        $this->load->model('mdl_store_cat_assign');
        $count = $this->mdl_store_cat_assign->count_where($column, $value);
        return $count;
    }

    function get_max()
    {
        $this->load->model('mdl_store_cat_assign');
        $max_id = $this->mdl_store_cat_assign->get_max();
        return $max_id;
    }

    function _custom_query($mysql_query)
    {
        $this->load->model('mdl_store_cat_assign');
        $query = $this->mdl_store_cat_assign->_custom_query($mysql_query);
        return $query;
    }

}