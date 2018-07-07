<?php
class Store_item_sizes extends MX_Controller
{

    function __construct() {
        parent::__construct();
    }

    function _delete_for_item($item_id){
        $query="delete from store_item_sizes where item_id=$item_id";
        $this->_custom_query($query);
    }


    function delete($update_id){
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //getting the item id for reaccessing the sizes related to that item because the update id is
        //actually the size id so if we delete that id then we would not be able to access the sizes
        $query=$this->get_where($update_id);
        foreach($query->result() as $row){
            $item_id=$row->item_id;
        }

        $this->_delete($update_id);

        $flash_msg='Item size is Successfully Deleted';
        $value="<div class='alert alert-danger' role='alert'>".$flash_msg."</div>";
        $this->session->set_flashdata('item',$value);

        redirect("store_item_sizes/update/$item_id");
    }

    function submit($update_id){

        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //getting the values of the buttons and then taking actions according to their values
        $submit=$this->input->post('submit',TRUE);
        $size=trim($this->input->post("size",TRUE));

        //if finished button is clicked then redirect to main update page
        if($submit=="Finished"){
            redirect("store_items/create/$update_id");
        } elseif($submit=="Submit"){//if submit button is clicked then add size to the database

            if($size!=""){
                $data["item_id"]=$update_id;
                $data["size"]=$size;
                $this->_insert($data);

                //setting flash data on successful insertion
                $flash_msg='Item size has been added Successfully';
                $value="<div class='alert alert-success' role='alert'>".$flash_msg."</div>";
                $this->session->set_flashdata('item',$value);
            }

        }
        //at last redirect to the same page again
        redirect("store_item_sizes/update/$update_id");


    }
    function update($update_id){
        //site security
        if(!is_numeric($update_id)){
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //fetching sizes of the current item
        $data["query"]=$this->get_where_custom('item_id',$update_id);
        $data['num_rows']=$data['query']->num_rows();


        //sending information to the update view of the store_item_sizes module
        $data['flash_data']=$this->session->flashdata('item');
        $data['headline']="Update Item sizes";
        $data["update_id"]=$update_id;
        $data['view_file']='update';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function get($order_by)
    {
        $this->load->model('mdl_store_item_sizes');
        $query = $this->mdl_store_item_sizes->get($order_by);
        return $query;
    }

    function get_with_limit($limit, $offset, $order_by)
    {
        if ((!is_numeric($limit)) || (!is_numeric($offset))) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_item_sizes');
        $query = $this->mdl_store_item_sizes->get_with_limit($limit, $offset, $order_by);
        return $query;
    }

    function get_where($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_item_sizes');
        $query = $this->mdl_store_item_sizes->get_where($id);
        return $query;
    }

    function get_where_custom($col, $value)
    {
        $this->load->model('mdl_store_item_sizes');
        $query = $this->mdl_store_item_sizes->get_where_custom($col, $value);
        return $query;
    }

    function _insert($data)
    {
        $this->load->model('mdl_store_item_sizes');
        $this->mdl_store_item_sizes->_insert($data);
    }

    function _update($id, $data)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_item_sizes');
        $this->mdl_store_item_sizes->_update($id, $data);
    }

    function _delete($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_store_item_sizes');
        $this->mdl_store_item_sizes->_delete($id);
    }

    function count_where($column, $value)
    {
        $this->load->model('mdl_store_item_sizes');
        $count = $this->mdl_store_item_sizes->count_where($column, $value);
        return $count;
    }

    function get_max()
    {
        $this->load->model('mdl_store_item_sizes');
        $max_id = $this->mdl_store_item_sizes->get_max();
        return $max_id;
    }

    function _custom_query($mysql_query)
    {
        $this->load->model('mdl_store_item_sizes');
        $query = $this->mdl_store_item_sizes->_custom_query($mysql_query);
        return $query;
    }

}