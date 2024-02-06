<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <?php 
  //如果沒有設定 會丟出值
  //f12/網路/標頭/查看cookie是看request response
  echo $_COOKIE['my_cookie'] ?? '沒有設定my_cookie';
  ?>
</body>
</html>