<?php

include_once './User.php';
include_once './Validator.php';

define("DB_HOST", "localhost:3306");
define("DB_LOGIN", "root");
define("DB_PASS", "kims5775670");
define("DB_NAME", "shop");


class Admin extends User {

    private $validator;
    private $database;

    public function __construct() {
        parent::__construct();
        $this->validator = new Validator();
        $this->database = new DatabaseManagement();
    }

    public function create_client($name, $password, $email, $phone) {
        if (!$this->validator->is_name_valid($name)) {
            return "Invalid name";
        }
        if ($this->validator->is_exist($email)) {
            return "Email already exist";
        }
        if (!$this->validator->is_phone_valid($phone)) {
            return "Invalid phone number";
        }
        $this->database->query("INSERT INTO users VALUES(DEFAULT, :name, :password, :email, :phone, :type, :balance)");
        $this->database->bind(':name', $name);
        $this->database->bind(':password',$this->validator->password_encoded($password));
        $this->database->bind(':email', $email);
        $this->database->bind(':phone', $phone);
        $this->database->bind(':type', 'client');
        $this->database->bind('balance', 0.0);
        try {
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        try {
            $this->database->query("SELECT user_id FROM users WHERE email = :email");
            $this->database->bind(':email', $email);
            $wishlist_id = $this->database->single();
            $this->create_wishlist($wishlist_id["user_id"]);
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully registered";
    }

    private function create_wishlist($wishlist_id) {
        $this->database->query("CREATE TABLE `shop`.`wishlist #$wishlist_id` (
            product_id BIGINT,
            size VARCHAR(3) NOT NULL,
            color VARCHAR(20) NOT NULL,
            FOREIGN KEY(product_id) REFERENCES products(product_id) 
            ON DELETE SET NULL
            )ENGINE=InnoDB
        ");
        $this->database->execute();
    }

    public function delete_client_by_id($user_id) {
        $this->database->query("DELETE FROM users WHERE user_id = :id AND type = 'client'");
        $this->database->bind(':id', $user_id);
        $this->database->execute();
        if ($this->database->rowCount() === 1) {
            $this->delete_wishlist($user_id);
            return true;
        }
        return false;
    }

    public function delete_client_by_email($email) {
        $this->database->query("SELECT user_id FROM users WHERE email = :email AND type = 'client'");
        $this->database->bind(':email', $email);
        $user_id = $this->database->single();
        return $this->delete_client_by_id($user_id["user_id"]);
    }

    private function delete_wishlist($wishlist_id) {
        try {
            $this->database->query("DROP TABLE `shop`.`wishlist #$wishlist_id`");
            $this->database->execute();
        } catch (PDOException $ex) {
        }
    }
    
    public function sign_up($email, $password){
        if(!$this->validator->is_email_valid($email)){
            return "Invalid email";
        }
        try{
            $this->database->query("SELECT password FROM users WHERE email = :email");
            $this->database->bind(':email', $email);
            $real_password = $this->database->single();
            if($real_password['password']){
              $encoded_password = $this->validator->password_encoded($password);
                if($encoded_password===$real_password['password']){
                    $this->database->query("SELECT * FROM users where email = :email AND password = :password");
                    $this->database->bind(':email', $email);
                    $this->database->bind(':password', $encoded_password);
                    $result = $this->database->single();
                    return $result;     
                }
            }
        } catch (PDOException $ex) {
            return NULL;
        }
        return "Wrong password";
    }

    public function apply_order($order_id){
        try{
            $this->database->query("UPDATE orders SET is_applied = 1 WHERE order_id = :order_id");
            $this->database->bind(':order_id', $order_id);
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully applied";
    }
    
       public function confirm_payment($order_id){
        try{
            $this->database->query("UPDATE orders SET is_payed = 1 WHERE order_id = :order_id");
            $this->database->bind(':order_id', $order_id);
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully confirmed";
    }
    
      public function confirm_delivery($order_id){
        try{
            $this->database->query("UPDATE orders SET is_delivered = 1 WHERE order_id = :order_id");
            $this->database->bind(':order_id', $order_id);
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully confirmed";
    }
    
      public function confirm_receivnes($order_id){
        try{
            $this->database->query("UPDATE orders SET is_received = 1 WHERE order_id = :order_id");
            $this->database->bind(':order_id', $order_id);
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully confirmed";
    }
    
    
    public function get_all_not_applied_orders(){
        try{
        $this->database->query("SELECT *FROM orders where is_applied = 0");
        $orders = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $orders;
    }
    
      public function get_all_not_payed_orders(){
        try{
        $this->database->query("SELECT *FROM orders where is_payed = 0 AND is_applied = 1");
        $orders = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $orders;
    }
    
     public function get_all_not_delivered_orders(){
        try{
        $this->database->query("SELECT *FROM orders where is_applied = 1, is_payed = 1  AND is_delivered = 0");
        $orders = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $orders;
    }
    
      public function get_all_not_received_orders(){
        try{
        $this->database->query("SELECT *FROM orders where is_applied = 1, is_payed = 1, is_delivered = 1 AND is_received = 0");
        $orders = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $orders;
    }
    
    public function get_all_clients(){
        try{
        $this->database->query("SELECT *FROM users where type = 'client' ORDER BY user_id");
        $clients = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $clients;
    }
    
    public function get_all_admins(){
        try{
        $this->database->query("SELECT *FROM users where type = 'admin' ORDER BY user_id");
        $admins = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $admins;
    }
    
    
}
