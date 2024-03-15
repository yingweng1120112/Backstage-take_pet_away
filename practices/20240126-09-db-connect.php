<?php

//連到哪台主機
$db_host = "localhost";
//填入自己的帳密
$db_user = 'root';
$db_pass = '';
$db_name = 'proj57';

//連到哪個資料類型的資料庫  如果通訊埠不同 要在最後加port:****
$dsn = "mysql:host={$db_host};dbname={$db_name};charset=utf8mb4";
//資料庫連線

$pdo_option = [
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, //fetchAll()裡的預設值 
];
$pdo = new PDO($dsn, $db_user, $db_pass,$pdo_option);
//LIMIT 3 取前三筆
$sql = "SELECT * FROM address_book LIMIT 3";
$stmt = $pdo ->query($sql);

$rows = $stmt->fetchAll();

header('Content-Type:application/json');

echo json_encode($rows,JSON_UNESCAPED_UNICODE);
