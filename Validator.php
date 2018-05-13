<?php

define("DB_HOST", "localhost:3306");
define("DB_LOGIN", "root");
define("DB_PASS", "kims5775670");
define("DB_NAME", "shop");


class Validator {

    private $database;
    private $name_pattern = "/^[\p{L} \.'\-]+$/";
    //ACCEPTS LIKE (+91)122 1234567 OR WITHOUT SPACE, OR ETC
    private $phone_number_pattern = "/^\(?\+?([0-9]{1,4})\)?[-\. ]?(\d{3})[-\. ]?([0-9]{7})$/";
    //#, Street name, Zip Code, City, Country is the address format.
    private $address_pattern = "/^\\d+ [a-zA-Z ]+, \\d+ [a-zA-Z ]+, [a-zA-Z ]+$/";
    private $ccv_pattern = "/^\d{3}$/";

    public function __construct() {
        $this->database = new DatabaseManagement();
    }

    public function is_exist($email) {
        $this->database->query("SELECT * FROM users where email = :email");
        $this->database->bind(":email", $email);
        if (!$this->database->resultset()) {
            return false;
        }
        return true;
    }

    public function is_name_valid($name) {
        if (preg_match($this->name_pattern, $name)) {
            return true;
        }
        return false;
    }

    public function password_encoded($password) {
        return md5($password);
    }

    public function is_phone_valid($phone_number) {
        if (preg_match($this->phone_number_pattern, $phone_number)) {
            return true;
        }
        return false;
    }

    public function is_ccv_valid($ccv) {
        if (preg_match($this->ccv_pattern, $ccv)) {
            return true;
        }
        return false;
    }

    public function is_email_valid($email) {
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return true;
        }
        return false;
    }

    public function type_validated($type) {
        if ($type === "admin") {
            return "admin";
        }
        if ($type === "client") {
            return "client";
        }
        if ($type === "client") {
            return "client";
        }
        return NULL;
    }

    public function is_address_valid($address) {
        if (preg_match($this->address_pattern, $address)) {
            return true;
        }
        return false;
    }

    public function is_card_number_valid($number) {
        // Strip any non-digits (useful for credit card numbers with spaces and hyphens)
        $number = preg_replace('/\D/', '', $number);
        // Set the string length and parity
        $number_length = strlen($number);
        $parity = $number_length % 2;
        // Loop through each digit and do the maths
        $total = 0;
        for ($i = 0; $i < $number_length; $i++) {
            $digit = $number[$i];
            // Multiply alternate digits by two
            if ($i % 2 == $parity) {
                $digit*=2;
                // If the sum is two digits, add them together (in effect)
                if ($digit > 9) {
                    $digit-=9;
                }
            }
            // Total up the digits
            $total+=$digit;
        }
        // If the total mod 10 equals 0, the number is valid
        return ($total % 10 == 0) ? TRUE : FALSE;
    }

}
