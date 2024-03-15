<?php
require __DIR__ . '/parts/pdo-connect.php';  #獲取資料庫連線資料

$title = '產品編輯';
?>

<!-- 所有頁面的拼接順序 每一頁都主要是換掉section的部分 -->
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>


<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<?php include __DIR__ . '/parts/6_foot.php' ?>