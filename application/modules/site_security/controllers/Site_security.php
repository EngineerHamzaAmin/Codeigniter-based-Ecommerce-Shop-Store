<?php
class Site_security extends MX_Controller
{
    function __construct() {
        parent::__construct();
    }

    function _get_support_team_name(){
        $name = "Customer Support";
        return $name;
    }

    function _get_welcome_msg($customer_id){
        $this->load->module('Store_orderstatus');
        $customer_name = $this->store_accounts->_get_customer_name($customer_id);
        $msg = "Hello $customer_name, <br><br>";
        $msg .= "Thank you for creating an account with CI Shop. If you have any question ";
        $msg .= "about any of our products and services then please do get in touch. We are here ";
        $msg .= "seven days a week and would be happy to help you.<br><br> ";
        $msg .= "Regards: <br><br>";
        $msg .= "Hamza Amin (Founder)";
        return $msg;
    }

    function _check_admin_login_details($username,$password){
        $target_name = "admin";
        $target_password = "password";
        if($username==$target_name && $password == $target_password){
            return TRUE;
        } else{
            return FALSE;
        }
    }

    function _make_sure_logged_in(){
        $user_id = $this->_get_user_id();
        if(!is_numeric($user_id)){
            redirect('youraccount/login');
        }
    }

    function _get_user_id(){
        //Attempt to get ID of the user

        //Start by checking for the session variable
        $user_id = $this->session->userdata('user_id');

        if(!is_numeric($user_id)){
            //Check in the cookies
            $this->load->module('site_cookies');
            $user_id = $this->site_cookies->_attempt_get_user_id();
        }
        return $user_id;
    }

    function generate_random_string($length){
        $characters = '23456789abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ';
        $randomString = '';
        for($i = 0;$i<$length;$i++){
           $randomString .= $characters[rand(0, strlen($characters)-1)];
        }

        return $randomString;
    }
    
    function _verify_hash($plain_text_str, $hashed_str){
        $result = password_verify($plain_text_str,$hashed_str);
        return $result;// TRUE or FALSE
    }

    function _encrypt_string($str){
        $this->load->library('encryption');
        $encrypted_str = $this->encryption->encrypt($str);
        return $encrypted_str;// TRUE or FALSE
    }
    function _decrypt_string($str){
        $this->load->library('encryption');
        $decrypted_str = $this->encryption->decrypt($str);
        return $decrypted_str;// TRUE or FALSE
    }

    function _hash_string($str){
        $hash_string = password_hash($str, PASSWORD_BCRYPT, array(
            'cost' => 11
        ));
        return $hash_string;
    }

    function _make_sure_is_admin(){
        $is_admin = $this->session->userdata('is_admin');
        if($is_admin == 1) {
            return TRUE;
        } else{
            redirect('site_security/not_allowed');
        }
    }

    function not_allowed(){
        echo "You are not allowed to access it";
    }

}