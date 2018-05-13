<?php

include_once './User.php';
include_once './Validator.php';

define("DB_HOST", "localhost:3306");
define("DB_LOGIN", "client");
define("DB_PASS", "client");
define("DB_NAME", "shop1");

class Client extends User {

    private $validator;
    private $database;

    public function __construct() {
        parent::__construct();
        $this->validator = new Validator();
        $this->database = new DatabaseManagement();
    }

    public function create_order($address, $name, $phone, $email, $credit_card_id, $cc_verification_code) {
        try {
            if (!$this->validator->is_name_valid($name)) {
                return "Invalid name";
            }
            if (!$this->validator->is_email_valid($email)) {
                return "Invalid email";
            }
            if (!$this->validator->is_phone_valid($phone)) {
                return "Invalid phone number";
            }
            if (!$this->validator->is_address_valid($address)) {
                return "Invalid address";
            }
            if (!$this->validator->is_card_number_valid($credit_card_id)) {
                return "Invalid credit card number";
            }

            if (!$this->validator->is_ccv_valid($cc_verification_code)) {
                return "Invalid verification code";
            }

            $this->database->query("INSERT INTO orders VALUES(DEFAULT, :user_id, :address, :name, :phone, :email, :credit_card_id, :ccv, 0, 0, 0, 0)");
            $this->database->bind(':user_id', $this->get_user_id());
            $this->database->bind(':address', $address);
            $this->database->bind(':name', $name);
            $this->database->bind(':phone', $phone);
            $this->database->bind(':email', $email);
            $this->database->bind(':credit_card_id', $credit_card_id);
            $this->database->bind(':ccv', $cc_verification_code);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        try {
            $this->database->query("SELECT order_id FROM orders ORDER BY order_id DESC LIMIT 1");
            $order_info = $this->database->single();
             $order_info["order_id"];
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        try {
            $this->create_details($order_info["order_id"]);
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }

        return $order_info["order_id"];
    }

    private function create_details($order_id) {
        $this->database->query("CREATE TABLE `shop`.`order #$order_id` (
        product_id BIGINT NOT NULL,
        size VARCHAR(3) NOT NULL,
        color VARCHAR(20) NOT NULL,
        amount TINYINT NOT NULL,
        price DOUBLE NOT NULL
        )ENGINE=InnoDB");
        $this->database->execute();
    }

    public function create_order_details($order_id, $product_id, $size, $color, $amount, $price) {
        try{
            $this->database->query("INSERT INTO shop.`order #$order_id` VALUES (:product_id, :size, :color, :amount, :price)");
            $this->database->bind(':product_id', $product_id);
            $this->database->bind(':size', $size);
            $this->database->bind(':color', $color);
            $this->database->bind(':amount', $amount);
            $this->database->bind(':price', $price);
            $this->database->execute();
        } catch (PDOException $ex) {
return $ex->getMessage();
        }
        return "Successfully added";
    }

    public function leave_comment($issue, $email, $content) {
        try {
            $this->database->query("INSERT INTO client_comments VALUES(DEFAULT, :issue, :email, :content)");
            $this->database->bind(':issue', $issue);
            $this->database->bind(':email', $email);
            $this->database->bind(':content', $content);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully left";
    }

    public function add_to_wishlist($product_id, $size, $color) {
        try {
            $wishlist_id = $this->get_user_id();
            $this->database->query("INSERT INTO shop.`wishlist #$wishlist_id` (product_id, `size`, color) VALUES (:product_id, :size, :color)");
            $this->database->bind(':product_id', $product_id);
            $this->database->bind(':size', $size);
            $this->database->bind(':color', $color);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully added";
    }

    public function delete_from_wishlist($product_id, $size, $color){
        try{
            $wishlist_id = $this->get_user_id();
            $this->database->query("DELETE FROM shop.`wishlist #$wishlist_id` WHERE product_id = :product_id AND `size` = :size AND color = :color");
             $this->database->bind(':product_id', $product_id);
             $this->database->bind(':size', $size);
            $this->database->bind(':color', $color);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully deleted";
    }
    
    public function get_order_history(){
        try{
            $this->database->query("SELECT * FROM orders WHERE user_id = :user_id");
            $this->database->bind('user_id', $this->get_user_id());
           $orders =  $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $orders;
    }
    
    public function get_current_orders(){
        try{
            $this->database->query("SELECT * FROM orders WHERE user_id = :user_id AND is_received = 0");
            $this->database->bind('user_id', $this->get_user_id());
           $orders =  $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $orders;
    }
}
