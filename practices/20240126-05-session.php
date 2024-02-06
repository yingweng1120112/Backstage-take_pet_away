<?php
session_start(); //啟用session 預設是關掉
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <?php
  if(isset($_SESSION['num'])){
    $_SESSION['num'] ++;
  }else{
    $_SESSION['num'] = 1;
  }
  //陣列中要用某個屬性值要加{}
  echo"<h2> {$_SESSION['num']} </h2>";
  //每次拜訪網站會拿到不同的值
  //可以從f12 application cookie 中檢視session id
  //可以從php.ini 檢視session各種設定(從control panel config中打開php.ini)
  ?>
</body>
</html>