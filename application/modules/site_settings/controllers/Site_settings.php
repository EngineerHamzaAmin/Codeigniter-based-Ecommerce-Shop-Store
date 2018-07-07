<?php

class Site_settings extends MX_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    function is_mobile(){
        $this->load->library('user_agent');
        $is_mobile = $this->agent->is_mobile();
        return $is_mobile;
    }

    function _get_map_code(){
        $map_code = "<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52922.8417887212!2d71.94713040341173!3d34.000813646177164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38ded4195e7b3c37%3A0x1828feca9ab9a68f!2sZiarat+Kaka+Sahib%2C+Nowshera%2C+Khyber+Pakhtunkhwa%2C+Pakistan!5e0!3m2!1sen!2s!4v1526155304062\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>";
        return $map_code;
    }

    function _get_our_name(){
        $name = "OHS";
        return $name;
    }
    function _get_our_address(){
        $address = "Srish Masjid Khwar Miangan,600<br>";
        $address .= "Ziarat Kaka Sahib,1001";
        return $address;
    }

    function _get_our_telnum(){
        $telnum = "03159184326";
        return $telnum;
    }

    function _get_cookie_name(){
        $cookie_name = 'dafasdfas';
        return $cookie_name;
    }

    function _get_currency_symbol(){
        $symbol = "&dollar;";
        return $symbol;
    }
    function _get_currency_code(){
        $symbol = "USD";
        return $symbol;
    }

    function _get_item_segments()
    {
        //return segments for the store items pages(product pages)
        $segments = "handicrafting/handicrafts/";
        return $segments;
    }

    function _get_items_segments()
    {
        //return segments for the store items pages(product pages)
        $segments = "crafts/handicrafts/";
        return $segments;
    }

    function _get_paypal_email(){
        $email = 'hamzaamin@gmail.com';
        return $email;
    }

    function _get_page_not_found_msg(){
        $msg = "<h1>It's a webpage but not as we know it!</h1>";
        $msg .= "<p>Please check your vibe and try again</p>";
        return $msg;
    }
}