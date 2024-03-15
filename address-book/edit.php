<!-- 複製add.php進行修改 -->
<?php
require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/parts/pdo-connect.php';
$title = '編輯通訊錄';
$pageName = 'edit'; //沒用到

$sid = isset($_GET["sid"]) ? intval($_GET["sid"]) : 0;
//判斷是否有sid
if (empty($sid)) {
  header('Location: list.php');
  exit;
}
//有拿到資料
$r = $pdo->query("SELECT * FROM address_book WHERE sid=$sid")->fetch();
if (empty($r)) {
  header('Location: list.php');
  exit;
}


?>
<?php include __DIR__ . '/parts/html-head.php' ?>
<!-- <style>放這裡是限定此頁 放html-head是全部適用 都可以 -->
<style>
  form .mb-3 .form-text {
    color: red;
  }
</style>
<?php include __DIR__ . '/parts/navbar.php' ?>
<div class="container">
  <div class="row">
    <div class="col-6">
      <!-- https://getbootstrap.com/docs/5.3/components/card/ -->
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">編輯通訊錄</h5>

          <!-- https://getbootstrap.com/docs/5.3/forms/overview/ -->
          <form name="form1" onsubmit="sendData(event)">
            <!-- 此欄不讓用戶修改 -->
            <input type="hidden" name="sid" value="<?= $r['sid'] ?>">
            <div class="mb-3">
              <label for="name" class="form-label">編號</label>
              <input type="text" class="form-control" value="<?= $r['sid'] ?>" disabled>
            </div>

            <div class="mb-3">
              <label for="name" class="form-label">姓名</label>
              <input type="text" class="form-control" id="name" name="name" value="<?= $r['name'] ?>">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">電郵</label>
              <input type="text" class="form-control" id="email" name="email" value="<?= $r['email'] ?>">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="mobile" class="form-label">手機</label>
              <input type="text" class="form-control" id="mobile" name="mobile" value="<?= $r['mobile'] ?>">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="birthday" class="form-label">生日</label>
              <input type="date" class="form-control" id="birthday" name="birthday" value="<?= $r['birthday'] ?>">

            </div>
            <div class="mb-3">
              <label for="address" class="form-label">地址</label>
              <textarea class="form-control" name="address" id="address" cols="30" rows="3"><?= $r['address'] ?></textarea>
              <!-- 快捷語法 https://5xcampus.com/posts/emmet-skills-html.html -->


            </div>

            <button type="submit" class="btn btn-primary">修改</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal 資料新增成功 -->
<!-- https://getbootstrap.com/docs/5.3/components/modal/ -->
<div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5">資料修改結果</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <div class="modal-body">
        <!-- https://getbootstrap.com/docs/5.3/components/alerts/ -->
        <div class="alert alert-success" role="alert">
          資料修改成功
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續新增</button>
          <a href="javascript: location.href=document.referrer" class="btn btn-primary">跳到列表頁</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Modal 資料新增失敗 -->
<div class="modal fade" id="failureModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5">資料沒有修改</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-danger" role="alert">
          資料沒有修改成功
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續修改</button>
        <a href="javascript: location.href=document.referrer" class="btn btn-primary">跳到列表頁</a>
      </div>
    </div>
  </div>
</div>



<?php include __DIR__ . '/parts/scripts.php' ?>
<script>
  const {
    name: nameField,
    email: emailField,
    mobile: mobileField
  } = document.form1;

  // http://stackoverflow.com/questions/46155/validate-email-address-in-javascript
  function validateEmail(email) {
    const re =
      /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  }

  function validateMobile(mobile) {
    const pattern =
      /^09\d{2}-?\d{3}-?\d{3}$/;
    return pattern.test(mobile);
  }



  function sendData(e) {
    //格式沒問題欄位的外觀要回復原來的狀態
    nameField.style.border = "1px solid #CCC";
    nameField.nextElementSibling.innerHTML = '';
    emailField.style.border = "1px solid #CCC";
    emailField.nextElementSibling.innerHTML = '';
    mobileField.style.border = "1px solid #CCC";
    mobileField.nextElementSibling.innerHTML = '';


    e.preventDefault(); //不要讓表單以傳統的方式送出

    let isPass = true; //是否通過檢查 預設值為true


    //TODO:檢查資料的格式(前後端都要檢查)

    //姓名是必填 長度2以上
    if (nameField.value.length < 2) {
      isPass = false;
      //若用return 代表直接返回 下面都不執行 所以不建議
      nameField.style.border = "2px solid red"
      nameField.nextElementSibling.innerHTML = '請輸入正確的名稱';
    }
    //email若有填才檢查格式 沒填就不檢查格式
    if (emailField.value && !validateEmail(emailField.value)) {
      isPass = false;
      emailField.style.border = "2px solid red"
      emailField.nextElementSibling.innerHTML = '請輸入正確的Email';
    }

    //mobile若有填才檢查格式 沒填就不檢查格式
    if (mobileField.value && !validateMobile(mobileField.value)) {
      isPass = false;
      mobileField.style.border = "2px solid red"
      mobileField.nextElementSibling.innerHTML = '請輸入正確的手機號碼';
    }



    //如果欄位都有通過檢查 才要發AJAX
    if (isPass) {
      const fd = new FormData(document.form1); //FormData看成沒有外觀的表單 主要功能是透過ajax傳送給後端
      // console.log(fd); //只看得到fromData空{} 看不到資料
      /*
      for(let i of fd.entries()){ //才看得到陣列(可迭代的類型:陣列、字串 )
        console.log(i);    
      } 
      */

      fetch('edit-api.php', {
          method: 'POST',
          body: fd
        })
        .then(r => r.json())
        .then(result => {
          console.log(result);
          if (result.success) {

            successModal.show();
          } else {

            if (result.error) {
              failureInfo.innerHTML = result.error;
            } else {
              failureInfo.innerHTML = '資料沒有修改成功';
            }
            failureModal.show();
          }
        })
        .catch(ex => {
          console.log(ex);
          //alert('資料發生錯誤'+ex)
          failureInfo.innerHTML = '資料修改發生錯誤' + ex;
          failureModal.show();
        })

    }




  }


  // https://getbootstrap.com/docs/5.3/components/modal/
  const successModal = new bootstrap.Modal('#successModal');
  const failureModal = new bootstrap.Modal('#failureModal');
  const failureInfo = document.querySelector('#failureModal .alert-danger');
</script>
<?php include __DIR__ . '/parts/html-foot.php' ?>