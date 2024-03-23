<?php
require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/parts/pdo-connect.php';

$sid = isset($_GET['user_id']) ? intval($_GET['user_id']) : 0;

if (!empty($user_id)) {
  $sql = "DELETE FROM user WHERE user_id=$user_id";
  $pdo->query($sql);
}

$backTo = 'user.php';
if (!empty($_SERVER['HTTP_REFERER'])) {
  $backTo = $_SERVER['HTTP_REFERER'];
}

header("Location: $backTo");
