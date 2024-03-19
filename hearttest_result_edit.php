<?php
// require __DIR__ . '/parts/admin-required.php'; 等連接
require __DIR__ . '/parts/pdo-connect.php';
$title = '編輯測驗結果';
$pageName = 'content_add';

$personalityType = isset($_GET["personality_type"]) ? $_GET["personality_type"] : '';


if (empty($personalityType)) {
  header('Location: hearttest_result.php');
  exit;
}
//有拿到資料

$sql = "SELECT * FROM psycological_test_result WHERE personality_type = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$personalityType]);
$r = $stmt->fetch();

if (empty($r)) {
  header('Location: hearttest_result.php');
  exit;
}

?>

<style>
  form .form-text {
    color: red;
  }
</style>
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>





<section class="container mt-auto">
  <div class="row">
    <div class="col-5">
      <div class="card">
        <div class="card-body container ">
          <h5 class="card-title">編輯結果類型</h5>
          <form name="form1" onsubmit="sendData(event)" class="mb-1">
            <label for="personalityType" class="form-label ">個性種類</label>
            <input type="text" class="form-control mb-3" id="personalityType" name="personality_type" placeholder="最多輸入 3 個字" maxlength="3" value="<?= $r['personality_type'] ?>">
            <div class="form-text"></div>

            <label for="pic" class="form-label ">上傳圖片</label>
            <input type="text" class="form-control mb-3" id="pic" name="pic" placeholder="最多輸入 3 個字" maxlength="3" value="<?= $r['pic'] ?>">

            <label for="typeContent" class="form-label">個性說明</label>
            <textarea class="form-control mb-3" id="typeContent" name="type__content" cols="30" rows="3" placeholder="最多輸入 100 個字" maxlength="100" style="height: 300px"><?= $r['type__content'] ?></textarea>
            <div class="form-text"></div>
            <button type="submit" class="btn btn-primary col-md-12">修改結果類型</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- 3.Modal(互動視窗)資料新增成功 -->
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
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續修改</button>
            <a href="hearttest_result.php" class="btn btn-primary">跳到列表頁</a>
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
            資料修改沒有成功
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續修改</button>
          <a href="hearttest_result.php" class="btn btn-primary">跳到列表頁</a>
        </div>
      </div>
    </div>
  </div>

</section>





<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>

<script>
  let personalityType = document.getElementById('personalityType');
  let typeContent = document.getElementById('typeContent');


  function sendData(e) {
    //格式沒問題欄位的外觀要回復原來的狀態
    personalityType.style.border = "1px solid #CCC";
    personalityType.nextElementSibling.innerHTML = '';
    typeContent.style.border = "1px solid #CCC";
    typeContent.nextElementSibling.innerHTML = '';



    e.preventDefault(); //不要讓表單以傳統的方式送出
    //建立檢查設定
    let isPass = true; //是否通過檢查 預設值為true

    //TODO:檢查資料的格式(前後端都要檢查)

    //欄位都必填
    if (personalityType.value.length < 1) {
      isPass = false;
      personalityType.style.border = "2px solid red"
      personalityType.nextElementSibling.innerHTML = '此欄為必填';
    }
    if (typeContent.value.length < 1) {
      isPass = false;
      typeContent.style.border = "2px solid red"
      typeContent.nextElementSibling.innerHTML = '此欄為必填';
    }






    //欄位都有通過檢查 發AJAX取得值
    if (isPass) {
      const fd = new FormData(document.form1); //FormData看成沒有外觀的表單 主要功能是透過ajax傳送給後端

      fetch('hearttest_result_edit-api.php', {
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
              failureInfo.innerHTML = '資料新增沒有成功';
            }
            failureModal.show();
          }
        })
        .catch(ex => {
          console.log(ex);
          //alert('資料發生錯誤'+ex)
          failureInfo.innerHTML = '資料新增發生錯誤' + ex;
          failureModal.show();
        })
    }

  }
  const successModal = new bootstrap.Modal('#successModal');
  const failureModal = new bootstrap.Modal('#failureModal');
  const failureInfo = document.querySelector('#failureModal .alert-danger');
</script>

<?php include __DIR__ . '/parts/6_foot.php' ?>