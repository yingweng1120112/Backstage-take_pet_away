<!-- 資料庫連線 -->
<?php  
  require __DIR__. '/parts/pdo-connect.php'; 
?>
<!-- 把a.html拆解成四個檔案 再拼裝起來  -->
<?php include __DIR__ . '/parts/html-head.php' ?>
<?php include __DIR__ . '/parts/navbar.php' ?>
<div class="container">
  <h2>index_</h2>
</div>
<?php include __DIR__ . '/parts/scripts.php' ?>
<?php include __DIR__ . '/parts/html-foot.php' ?>