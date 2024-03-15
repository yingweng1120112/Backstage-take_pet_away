<?php //要在最前面設定cookie 多為值跟字串
//time 會顯示在f12/應用程式/expires/max-age
//1970年開始算起的秒數 時間戳記
  setcookie("my_cookie","hello cookie",time()+15);
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
  //第一次會看到warning 第二次成功 (因為是讀取帶來的值 第一次沒有)成功後測試 f12/應用程式/cookie/刪除重整會有warning 再重整一次就ok
  echo $_COOKIE['my_cookie'];
  
  ?>
  
</body>
</html>