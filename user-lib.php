<?php

class User
{
    // 連接到資料庫
    private $pdo = null;
    private $stmt = null;
    public $error = null;
    function __construct()
    {
        $this->pdo = new PDO(
            "mysql:host=localhost;dbname=take_pet_away;charset=utf8mb4",
            "root",
            "",
            [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
            ]
        );
    }

    // 關閉資料庫連接
    function __destruct()
    {
        if ($this->stmt !== null) {
            $this->stmt = null;
        }
        if ($this->pdo !== null) {
            $this->pdo = null;
        }
    }

    // RUN SQL QUERY
    // $sql : sql to run
    // $data : data to bind
    function query($sql, $data = null): void
    {
        $this->stmt = $this->pdo->prepare($sql);
        $this->stmt->execute($data);
    }

    //  透過 ID 或電子郵件取得用戶
    //  $id : email or user_id
    function get($id)
    {
        $this->query(sprintf(
            "SELECT * FROM `user` WHERE `user_id`=?",
            is_numeric($id) ? "id" : "email"
        ), [$id]);
        return $this->stmt->fetch();
    }

    //  註冊用戶
    //  $name : user name
    //  $email : user email
    //  $pass : password
    function register($name, $account, $pass, $email, $address_detail)
    {
        // 檢查
        if (is_array($this->get($email))) {
            $this->error = "$email 已經註冊過了~";
            return false;
        }

        // 新增使用者
        $this->query(
            "INSERT INTO `user` (`name`, `account`, `password`,  `email` , `address_detail`) VALUES (?,?,?,?,?)",
            [$name, $account, password_hash($pass, PASSWORD_DEFAULT), $email, $address_detail]
        );
        return true;
    }
}


// 設定資料庫資料
define("DB_HOST", "localhost");
define("DB_NAME", "take_pet_away");
define("DB_CHARSET", "utf8mb4");
define("DB_USER", "root");
define("DB_PASSWORD", "");



// 建立使用者
$USR = new User();
