<?php

class Database
{
    private $host = "localhost";
    private $dbname = "db_kursus";
    private $username = "root";
    private $password = "";

    public $conn;

    public function connect()
    {
        try{
            $this->conn = new PDO(
                "mysql:host=$this->host;dbname=$this->dbname",
                $this->username,
                $this->password
            );

            return $this->conn;
        }
        catch(PDOException $e){
            die($e->getMessage());
        }
    }
}