<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '編輯線上認養';
$pageName = 'adoptEdit';

$adopt_id = isset($_GET['adopt_id']) ? intval($_GET['adopt_id']) : 0;


$r = $pdo->query("SELECT * FROM online_virtual_adoption_form WHERE adopt_id= $adopt_id")->fetch();

$method = $r['donation_method'];
$payment = $r['payment'];
$donation = $r['donation'];
$address = $r['donate_address'];

?>
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>
<div class="container">
  <div class="row d-flex justify-content-center mt-5">
    <div class="col-6">
      <div class="card my-5 border border-3 border-secondary">

        <div class="card-body">
          <h3 class="card-title text-center fw-bold mb-3">線上認養</h3>

          <form name="form1" onsubmit="sendData(event)" class="vstack">

            <input type="hidden" name="adopt_id" value="<?= $r['adopt_id'] ?>">
            <div class="mb-3">
              <label for="name" class="form-label text-center fw-bold">#</label>
              <input type="text" class="form-control text-center fw-bold" value="<?= $r['adopt_id'] ?>" disabled>
            </div>

            <div class="mb-3">
              <label for="user_id" class="form-label">使用者ID</label>
              <input type="text" class="form-control text-center fw-bold" id="user_id" name="user_id" value="<?= $r['user_id'] ?>">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="pet_id" class="form-label">寵物ID</label>
              <input type="text" class="form-control text-center fw-bold" id="pet_id" name="pet_id" value="<?= $r['pet_id'] ?>">
              <div class="form-text"></div>
            </div>

            <div class="d-flex flex-column">
              <label for="donation_method">捐款方式</label>
              <select class="py-2 text-center fw-bold" name="donation_method" id="donation_method" style="border-radius: 5px; margin: 10px 0px ">
                <option value="單次捐贈" <?php if (!empty($method) && $method == '單次捐贈')  echo 'selected = "selected"'; ?>>單次捐贈</option>
                <option value="定期扣款" <?php if (!empty($method) && $method == '定期扣款')  echo 'selected = "selected"'; ?>>定期扣款</option>
              </select>
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="amount" class="form-label">捐款金額</label>
              <input type="text" class="form-control text-center fw-bold my-1" id="amount" name="amount" value="<?= $r['amount'] ?>">
              <div class="form-text"></div>
            </div>


            <div class="d-flex flex-column">
              <label for="payment">付款方式</label>
              <select class="py-2 text-center fw-bold" name="payment" id="payment" style="border-radius: 5px; margin: 13px 0px ">
                <option value="銀行轉帳 <?php if (!empty($payment) && $payment == '銀行轉帳')  echo 'selected = "selected"'; ?>">銀行轉帳</option>
                <option value="超商繳費 <?php if (!empty($payment) && $payment == '超商繳費')  echo 'selected = "selected"'; ?>">超商繳費</option>
              </select>
              <div class="form-text"></div>
            </div>
            <div class="d-flex flex-column">
              <label for="donation">捐款用途</label>
              <select class="py-2 text-center fw-bold" name="donation" id="donation" style="border-radius: 5px; margin: 15px 0px ">
                <option value="<?php if (!empty($donation) && $donation == '不指定')  echo 'selected = "selected"';  ?> 不指定">不指定</option>
                <option value="<?php if (!empty($donation) && $donation == '需要緊急')  echo 'selected = "selected"';  ?> 需要緊急">需要緊急</option>
                <option value="<?php if (!empty($donation) && $donation == '絕孕計畫')  echo 'selected = "selected"'; ?> 絕孕計畫">絕孕計畫</option>
              </select>
              <div class="form-text"></div>
            </div>

            <div class="d-flex flex-column">
              <label for="donate_address">捐贈證明寄送</label>
              <select class="py-2 text-center fw-bold" name="donate_address" id="donate_address" style="border-radius: 5px; margin: 15px 0px ">
                <option value="<?php if (!empty($address) && $address == '地址')  echo 'selected = "selected"'; ?> 地址">地址</option>
                <option value="<?php if (!empty($address) && $address == '信箱')  echo 'selected = "selected"'; ?> 信箱">信箱</option>
              </select>
              <div class="form-text"></div>
            </div>
            <button type="submit" class="btn btn-secondary">修改</button>
          </form>

        </div>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5">資料修改結果</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-success" role="alert">
          資料修改成功
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續修改</button>
        <a href="javascript: location.href=document.referrer" class="btn btn-primary">跳到列表頁</a>
      </div>
    </div>
  </div>
</div>

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
<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<script>
  function sendData(e) {


    e.preventDefault(); // 不要讓有外觀的表單以傳統的方式送出

    let isPass = true; // 有沒有通過檢查, 預設值為 true

    // 如果欄位都有通過檢查, 才要發 AJAX
    if (isPass) {
      const fd = new FormData(document.form1); // 看成沒有外觀的表單

      fetch('adoptEdit-api.php', {
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
          // alert('資料新增發生錯誤' + ex)
          failureInfo.innerHTML = '資料修改發生錯誤' + ex;
          failureModal.show();
        })
    }
  }


  const successModal = new bootstrap.Modal('#successModal');
  const failureModal = new bootstrap.Modal('#failureModal');
  const failureInfo = document.querySelector('#failureModal .alert-danger');
</script>
<?php include __DIR__ . '/parts/6_foot.php' ?>
