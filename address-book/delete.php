<?php
require __DIR__ . '/parts/admin-required.php';
require __DIR__ ."/parts/pdo-connect.php";

$sid = isset($_GET["sid"]) ? intval ($_GET["sid"]) : 0;

if(!empty($sid)){
  $sql ="DELETE FROM address_book WHERE sid=$sid";
  $pdo->query($sql);
}
//刪除筆數後不會跳轉到第一頁(後端作法 前端用document.referer)
$backTo = 'list.php';
if(!empty($_SERVER['HTTP_REFERER'])){
  $backTo = $_SERVER['HTTP_REFERER'];
}

header("Location: $backTo");