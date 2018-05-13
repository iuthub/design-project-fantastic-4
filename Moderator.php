<?php

include_once './User.php';
define("DB_HOST", "localhost:3306");
define("DB_LOGIN", "client");
define("DB_PASS", "client");
define("DB_NAME", "shop1");


class Moderator extends User {

    private $database;

    public function __construct() {
        parent::__construct();
        $this->database = new DatabaseManagement();
    }

    public function add_product($product_name, $price, $short_description, $long_decription, $content_care, $size_fit, $category, $brand_name) {
        try {
            $this->database->query("INSERT INTO products VALUES(DEFAULT, :product_name, :price, :short_description, :long_decription, :content_care, :size_fit, :category, 0.0, 0, '','', -1, 1, :brand_name)");
            $this->database->bind(':product_name', $product_name);
            $this->database->bind(':price', $price);
            $this->database->bind(':short_description', $short_description);
            $this->database->bind(':long_decription', $long_decription);
            $this->database->bind(':content_care', $content_care);
            $this->database->bind(':size_fit', $size_fit);
            $this->database->bind(':category', $category);
            $this->database->bind(':brand_name', $brand_name);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        try {
            $this->database->query("SELECT product_id FROM products ORDER BY product_id DESC LIMIT 1");
            $product_info = $this->database->single();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        $this->create_details($product_info["product_id"]);
        return $product_info["product_id"];
    }

    public function add_image_path($product_id, $image_path) {
        try {
            $this->database->query("UPDATE products SET image_path = :image_path WHERE product_id = :product_id");
            $this->database->bind(':product_id', $product_id);
            $this->database->bind(':image_path', $image_path);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
    }

    public function add_image_count($product_id, $image_count) {
        try {
            $this->database->query("UPDATE products SET image_count = :image_count WHERE product_id = :product_id");
            $this->database->bind(':product_id', $product_id);
            $this->database->bind(':image_count', $image_count);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
    }

    private function create_details($product_id) {
        try {
            $this->database->query("CREATE TABLE `shop`.`details #$product_id` (
        size VARCHAR(3) NOT NULL,
        color VARCHAR(20) NOT NULL,
        amount TINYINT
        )ENGINE=InnoDB");

            $this->database->execute();
        } catch (PDOException $ex) {
            
        }
    }

    public function add_details($product_id, $amountXS, $amountS, $amountM, $amountL, $amountXL, $color) {
        try {
            echo "SUKA: " . $product_id;
            $this->database->beginTransaction();
            $this->database->query("INSERT INTO shop.`details #$product_id` (`size`, color, amount) VALUES (:size, :color, :amount)");
            $this->database->bind(':color', $color);
            $this->database->bind(':size', 'XS');
            $this->database->bind(':amount', $amountXS);
            $this->database->execute();
            $this->database->bind(':color', $color);
            $this->database->bind(':size', 'S');
            $this->database->bind(':amount', $amountS);
            $this->database->execute();
            $this->database->bind(':color', $color);
            $this->database->bind(':size', 'M');
            $this->database->bind(':amount', $amountM);
            $this->database->execute();
            $this->database->bind(':color', $color);
            $this->database->bind(':size', 'L');
            $this->database->bind(':amount', $amountL);
            $this->database->execute();
            $this->database->bind(':color', $color);
            $this->database->bind(':size', 'XL');
            $this->database->bind(':amount', $amountXL);
            $this->database->execute();
            $this->database->endTransaction();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
    }

    public function get_available_colors($product_id) {
        try {
            $this->database->query("SELECT color FROM shop.`details #$product_id` GROUP BY color");
            $colors = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $colors;
    }

    public function get_amount_of_size_by_color($product_id, $color) {
        try {
            $this->database->query("SELECT size, amount FROM  shop.`details #$product_id` WHERE color = :color");
            $this->database->bind(':color', $color);
            $result = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $result;
    }

    public function delete_product_by_id($product_id) {
        try {
            $this->database->query("DELETE FROM products WHERE product_id = :product_id");
            $this->database->bind(':product_id', $product_id);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        try {
            $this->delete_product_details_by_id($product_id);
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }

        return "Successfully deleted";
    }

    private function delete_product_details_by_id($product_id) {
        $this->database->query("DROP TABLE `shop`.`details #$product_id`");
        $this->database->execute();
    }

}
