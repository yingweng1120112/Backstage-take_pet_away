<!-- 先連上課範例資料庫 ( 參考用 暫放) -->
<?php

$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "proj01";

$dsn = "mysql:host={$db_host};dbname={$db_name};charset=utf8mb4";

$pdo_options = [
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
];


$pdo = new PDO($dsn, $db_user, $db_pass, $pdo_options);

/*
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "proj01";

$dsn = "mysql:host={$db_host};dbname={$db_name};charset=utf8mb4";

$pdo_options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
];


$pdo = new PDO($dsn, $db_user, $db_pass, $pdo_options);
*/