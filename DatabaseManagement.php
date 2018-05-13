<?php

class DatabaseManagement {

    private $host = DB_HOST;
    private $db_name = DB_NAME;
    private $login = DB_LOGIN;
    private $password = DB_PASS;
    private $stmt;
    private $db;
    private $error;

    public function __construct() {
        $dsn = 'mysql:host=' . $this->host . ';dbname=' . $this->db_name;
        $options = array(
            PDO::ATTR_PERSISTENT => true,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        );
        try {
            $this->db = new PDO($dsn, $this->login, $this->password, $options);
        } catch (PDOException $ex) {
            $this->error = $ex->getMessage();
        }
    }

    public function __destruct() {
        $this->host = NULL;
        $this->db_name = NULL;
        $this->login = NULL;
        $this->password = NULL;
        $this->stmt = NULL;
        $this->db = NULL;
        $this->error = NULL;
    }

    public function query($query) {
        try {
            $this->stmt = $this->db->prepare($query);
        } catch (PDOException $ex) {
            $this->error = $ex->getMessage();
        }
    }

    public function bind($param, $value, $type = null) {
        if (is_null($type)) {
            switch (true) {
                case is_int($value):
                    $type = PDO::PARAM_INT;
                    break;
                case is_bool($value):
                    $type = PDO::PARAM_BOOL;
                    break;
                case is_null($value):
                    $type = PDO::PARAM_NULL;
                    break;
                default:
                    $type = PDO::PARAM_STR;
            }
        }
        try {
            $this->stmt->bindValue($param, $value, $type);
        } catch (PDOException $ex) {
            $this->error = $ex->getMessage();
        }
    }

    public function execute() {
        return $this->stmt->execute();
    }

    public function resultset() {
        try {
            $this->execute();
        } catch (PDOException $ex) {
            $this->error = $ex->getMessage();
            die();
        }
        return $this->stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function single() {
        try {
            $this->execute();
        } catch (PDOException $ex) {
            $this->error = $ex->getMessage();
            die();
        }
        return $this->stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function rowCount() {
        return $this->stmt->rowCount();
    }

    public function beginTransaction() {
        return $this->db->beginTransaction();
    }

    public function endTransaction() {
        return $this->db->commit();
    }

    public function cancelTransaction() {
        return $this->db->rollBack();
    }

    public function debugDumpParams() {
        return $this->stmt->debugDumpParams();
    }

    public function error() {
        return $this->error;
    }

}

?>
