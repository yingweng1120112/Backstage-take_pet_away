<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '登入';
$pageName = 'login';

if (isset($_SESSION['admin'])) {
  header('Location: index_.php');
  exit;
}
// 123
?>
<!-- 所有頁面的拼接順序 每一頁都主要是換掉section的部分 -->
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>

<!-- 新增註解123 -->
<!-- 主頁預設登入介面 -->
<section class="mt-5">
  <div class="row justify-content-center">
    <div class="col-lg-5">
      <div class="card shadow-lg border-0 rounded-lg mt-5">
        <div class="card-header">
          <h3 class="text-center font-weight-light my-4">登入</h3>
        </div>
        <div class="card-body">
          <form name="form1" onsubmit="sendData(event)">
            <div class="form-floating mb-3">
              <label for="email" class="form-label">電郵</label>
              <input type="text" class="form-control" id="email" name="email">
            </div>
            <div class="form-floating mb-3">
              <label for="password" class="form-label">密碼</label>
              <input type="password" class="form-control" id="password" name="password">
            </div>
            <div class="form-check mb-3">
              <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
              <label class="form-check-label" for="inputRememberPassword">記住密碼</label>
            </div>
            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
              <a class="small" href="password.html">忘記密碼?</a>
              <button type="submit" class="btn btn-primary">登入</button>
            </div>
          </form>
        </div>
        <div class="card-footer text-center py-3">
        </div>
      </div>
    </div>
  </div>


  <div class="modal fade" id="failureModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5">登入失敗</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="alert alert-danger" role="alert">
            帳號或密碼錯誤
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續登入</button>
        </div>
      </div>
    </div>
  </div>
</section>

<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<?php include __DIR__ . '/parts/6_foot.php' ?>


<script>
  const {
    email: emailField,
    password: passwordField
  } = document.form1;

  function validateEmail(email) {
    // 正則表達式
    const re =
      /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  }



  function sendData(e) {
    // 欄位的外觀要回復原來的狀態
    emailField.style.border = "1px solid #CCC";
    emailField.nextElementSibling.innerHTML = '';
    e.preventDefault(); // 不要讓有外觀的表單以傳統的方式送出
    let isPass = true; // 有沒有通過檢查, 預設值為 true

    // TODO: 檢查資料的格式

    // email 若有填才檢查格式, 沒填不檢查格式
    if (emailField.value && !validateEmail(emailField.value)) {
      isPass = false;
      emailField.style.border = "2px solid red";
      emailField.nextElementSibling.innerHTML = '請輸入正確的 Email';
    }



    // 如果欄位都有通過檢查, 才要發 AJAX
    if (isPass) {
      const fd = new FormData(document.form1); // 看成沒有外觀的表單

      fetch('login-api.php', {
          method: 'POST',
          body: fd
        })
        .then(r => r.json())
        .then(result => {
          console.log(result);
          if (result.success) {
            location.href = 'index_.php';
          } else {
            failureModal.show();
          }
        })
        .catch(ex => {
          console.log(ex);
        })
    }


  }
  const failureModal = new bootstrap.Modal('#failureModal');
</script>