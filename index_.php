<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '首頁';
$pageName = 'index';


session_start();


// 檢查是否有登出訊息
if (isset($_SESSION['logout_message'])) {
  echo '<div class="alert alert-info" role="alert">' . $_SESSION['logout_message'] . '</div>';

  // 清除登出訊息
  unset($_SESSION['logout_message']);
}
?>



<!-- 所有頁面的拼接順序 每一頁都主要是換掉section的部分 -->
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>
<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<?php include __DIR__ . '/parts/6_foot.php' ?>