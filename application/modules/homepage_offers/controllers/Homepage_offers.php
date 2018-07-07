<?php

class Homepage_offers extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }


    function _draw_offers($data,$is_mobile=FALSE){
        $block_id = $data['block_id'];
        if($is_mobile==FALSE) {
            $theme = $data['theme'];
        }
        $item_segments = $data['item_segments'];

        $mysql_query = "
        select store_items.* 
        from homepage_offers inner join homepage_blocks on homepage_offers.block_id = homepage_blocks.id
        inner join store_items on homepage_offers.item_id = store_items.id
        where homepage_offers.block_id=$block_id
        ";
        
        $query = $this->_custom_query($mysql_query);
        $num_rows = $query->num_rows();
        if($num_rows>0){
            $data['query'] = $query;
            $data['item_segments'] = $item_segments;

            if($is_mobile==FALSE){
                $view_file = 'offers';
                $data['theme'] = $theme;
            }  else {
                $view_file = 'offers_jqm';
            }
            $this->load->view($view_file,$data);
        }
    }
    function _delete_for_item($block_id)
    {
        $query = "delete from homepage_offers where block_id=$block_id";
        $this->_custom_query($query);
    }

    function delete($update_id)
    {
        if (!is_numeric($update_id)) {
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //getting the item id for reaccessing the item_ids related to that item because the update id is
        //actually the item_id id so if we delete that id then we would not be able to access the item_ids
        $query = $this->get_where($update_id);
        foreach ($query->result() as $row) {
            $block_id = $row->block_id;
        }

        $this->_delete($update_id);

        $flash_msg = 'Homepage Offer is Successfully Deleted';
        $value = "<div class='alert alert-danger' role='alert'>" . $flash_msg . "</div>";
        $this->session->set_flashdata('item', $value);

        redirect("homepage_offers/update/$block_id");
    }

    function _is_valid_item($item_id){
        if(!is_numeric($item_id)){
            return false;
        }

        $this->load->module('store_items');
        $query = $this->store_items->get_where($item_id);
        $num_rows = $query->num_rows();
        if($num_rows>0){
            return true;
        } else {
            return false;
        }
    }

    function submit($update_id)
    {

        if (!is_numeric($update_id)) {
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //getting the values of the buttons and then taking actions according to their values
        $submit = $this->input->post('submit', TRUE);
        $item_id = trim($this->input->post("homepage_offer", TRUE));

        //if finished button is clicked then redirect to main update page
        if ($submit == "Finished") {
            redirect("homepage_blocks/create/$update_id");
        } elseif ($submit == "Submit") {//if submit button is clicked then add item_id to the database

            $is_valid_item = $this->_is_valid_item($item_id);
            if($is_valid_item==false){
                $flash_msg = 'The Item ID that you submitted was not valid';
                $value = "<div class='alert alert-warning' role='alert'>" . $flash_msg . "</div>";
                $this->session->set_flashdata('item', $value);
                redirect("homepage_offers/update/$update_id");
            }
            
            if ($item_id != "") {
                $data["block_id"] = $update_id;
                $data["item_id"] = $item_id;
                $this->_insert($data);

                //setting flash data on successful insertion
                $flash_msg = 'Homepage Offer has been added Successfully';
                $value = "<div class='alert alert-success' role='alert'>" . $flash_msg . "</div>";
                $this->session->set_flashdata('item', $value);
            }

        }
        //at last redirect to the same page again
        redirect("homepage_offers/update/$update_id");
    }

    function update($update_id)
    {
        //site security
        if (!is_numeric($update_id)) {
            redirect('site_security/not_allowed');
        }
        $this->load->module('site_security');
        $this->site_security->_make_sure_is_admin();

        //fetching item_ids of the current item
        $data["query"] = $this->get_where_custom('block_id', $update_id);
        $data['num_rows'] = $data['query']->num_rows();


        //sending information to the update view of the homepage_offers module
        $data['flash_data'] = $this->session->flashdata('item');
        $data['headline'] = "Update Homepage Offers";
        $data["update_id"] = $update_id;
        $data['view_file'] = 'update';
        $this->load->module('templates');
        $this->templates->admin($data);
    }

    function get($order_by)
    {
        $this->load->model('mdl_homepage_offers');
        $query = $this->mdl_homepage_offers->get($order_by);
        return $query;
    }

    function get_with_limit($limit, $offset, $order_by)
    {
        if ((!is_numeric($limit)) || (!is_numeric($offset))) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_homepage_offers');
        $query = $this->mdl_homepage_offers->get_with_limit($limit, $offset, $order_by);
        return $query;
    }

    function get_where($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_homepage_offers');
        $query = $this->mdl_homepage_offers->get_where($id);
        return $query;
    }

    function get_where_custom($col, $value)
    {
        $this->load->model('mdl_homepage_offers');
        $query = $this->mdl_homepage_offers->get_where_custom($col, $value);
        return $query;
    }

    function _insert($data)
    {
        $this->load->model('mdl_homepage_offers');
        $this->mdl_homepage_offers->_insert($data);
    }

    function _update($id, $data)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_homepage_offers');
        $this->mdl_homepage_offers->_update($id, $data);
    }

    function _delete($id)
    {
        if (!is_numeric($id)) {
            die('Non-numeric variable!');
        }

        $this->load->model('mdl_homepage_offers');
        $this->mdl_homepage_offers->_delete($id);
    }

    function count_where($column, $value)
    {
        $this->load->model('mdl_homepage_offers');
        $count = $this->mdl_homepage_offers->count_where($column, $value);
        return $count;
    }

    function get_max()
    {
        $this->load->model('mdl_homepage_offers');
        $max_id = $this->mdl_homepage_offers->get_max();
        return $max_id;
    }

    function _custom_query($mysql_query)
    {
        $this->load->model('mdl_homepage_offers');
        $query = $this->mdl_homepage_offers->_custom_query($mysql_query);
        return $query;
    }

}