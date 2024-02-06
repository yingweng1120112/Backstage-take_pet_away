<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <!-- 只有windows才用\斜線 -->
  <!-- 兩個差別 若檔名錯 require直接是error(較強烈) include 是warning(會繼續往下執行)   -->
  <!-- 若要包含資料庫連線用require -->
  <?php require __DIR__.'/20240125-14-foreach.php' ?>
  <!-- 拷貝路徑檔案 -->
  <?php include __DIR__.'/20240125-14-foreach.php' ?>
</body>
</html>