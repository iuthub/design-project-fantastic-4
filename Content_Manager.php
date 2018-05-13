<?php

include_once './DatabaseManagement.php';


define("DB_HOST", "localhost:3306");
define("DB_LOGIN", "root");
define("DB_PASS", "kims5775670");
define("DB_NAME", "shop");

class Content_Manager {

    private $database;

    public function __construct() {
        $this->database = new DatabaseManagement();
    }

    public function get_article_by_id($article_id) {
        try {
            $this->database->query("SELECT * FROM articles WHERE article_id = :article_id");
            $this->database->bind(':article_id', $article_id);
            $article = $this->database->single();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $article;
    }

    public function add_article($caption, $site, $content) {
        try {
            $this->database->query("INSERT INTO articles VALUES(DEFAULT, :caption, :site, :content)");
            $this->database->bind(':caption', $caption);
            $this->database->bind(':site', $site);
            $this->database->bind(':content', $content);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return 'Successfully added';
    }

    public function delete_article_by_id($article_id) {
        try {
            $this->database->query("DELETE FROM articles WHERE article_id = :article_id");
            $this->database->bind(':article_id', $article_id);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully deleted";
    }

    public function modify_article($article_id, $caption, $site, $content) {
        try {
            $this->database->query("");
            $this->database->bind(':article_id', $article_id);
            $this->database->bind(':$caption', $caption);
            $this->database->bind(':$site', $site);
            $this->database->bind(':$content', $content);
            $this->database->execute();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return "Successfully modified";
    }

    public function get_all_categories() {
        try {
            $this->database->query("SELECT category_name FROM categories ORDER BY category_order");
            $categories = $this->database->resultset();
        } catch (PDOException $ex) {
            return NULL;
        }
        return $categories;
    }

    public function get_n_products($number) {
        try {
            $this->database->query("SELECT * FROM products ORDER BY product_id DESC LIMIT :number");
            $this->database->bind(':number', $number);
            $products = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }

        return $products;
    }

    public function get_product_by_id($product_id) {
        try {
            $this->database->query("SELECT * FROM products WHERE product_id = :product_id");
            $this->database->bind(':product_id', $product_id);
            $product = $this->database->single();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $product;
    }
    
    public function get_n_products_by_category($category, $number){
         try {
            $this->database->query("SELECT * FROM products WHERE category = :category ORDER BY product_id DESC LIMIT :number");
            $this->database->bind(':category', $category);
            $this->database->bind(':number', $number);
            $products = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }

        return $products;
    }
    
    public function get_products_by_category($category){
         try {
            $this->database->query("SELECT * FROM products WHERE category = :category ORDER BY product_id");
            $this->database->bind(':category', $category);
            $products = $this->database->resultset();
        } catch (PDOException $ex) {
            return $ex->getMessage();
        }
        return $products;
    }
    
      public function get_available_colors($product_id) {
        try {
            $this->database->query("SELECT color FROM `details #$product_id` GROUP BY color");
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
    
}
