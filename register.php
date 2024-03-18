<!-- login+register -->
<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '註冊';
$pageName = 'register';

if (isset($_SESSION['admin'])) {
  header('Location: login.php');
  exit;
}

?>
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>

<div id="signup" >
  <div class=" row justify-content-center">
    <div class="col-6 col-lg-5 mx-auto my-auto">
      <div class="card shadow-lg border-0 rounded-lg mt-5">
        <div class="card-body">
          <h5 class="text-center font-weight-light my-4">註冊</h5>
          <form name="form2" onsubmit="sendData(event)">
            <div class="mb-3">
              <label for="name" class="form-label">姓名</label>
              <input type="text" class="form-control" id="name" name="name">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="account" class="form-label">電話</label>
              <input type="text" class="form-control" id="account" name="account">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">電子信箱</label>
              <input type="text" class="form-control" id="email" name="email">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">密碼</label>
              <input type="password" class="form-control" id="password" name="password">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="confirm_password" class="form-label">確認密碼</label>
              <input type="password" class="form-control" id="confirm_password" name="confirm_password">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="address_detail" class="form-label">通訊地址</label>
              <input type="text" class="form-control" id="address_detail" name="address_detail">
              <div class="form-text"></div>
            </div>
            <div>已有帳號？&nbsp<a href="login.php" class="goLogin">登入</a></div>
            <button type="submit" class="mx-auto d-block col-3 btn btn-primary">註冊</button>
          </form>
          <!-- <div class="text-center mt-3">
            <button type="button" class="col-3 btn btn-secondary" onclick="show_hide()">登入帳號</button>
          </div> -->
        </div>
      </div>
    </div>
  </div>

  <?php include __DIR__ . '/parts/5_script.php' ?>
  <?php include __DIR__ . '/parts/6_foot.php' ?>