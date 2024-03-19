<?php
// require __DIR__."/parts/admin-required.php";
require __DIR__ . "/parts/pdo-connect.php";
$title = "新增寵物";
$pageName = "pet_add";


?>

<?php include __DIR__ . "/parts/1_head.php" ?>
<?php include __DIR__ . "/parts/2_nav.php" ?>
<?php include __DIR__ . "/parts/3_side_nav.php" ?>
<style>
  form .mb-3 .form-text {
    color: red;
  }
</style>
<div class="container">
  <nav class="my-3" style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a class="text-reset text-decoration-none" href="index_.php">Take Pet Away</a></li>
      <li class="breadcrumb-item"><a class="text-reset text-decoration-none" href="#">收容動物</a></li>
      <li class="breadcrumb-item"><a class="text-reset text-decoration-none" href="pet_list.php">寵物資訊</a></li>
      <li class="breadcrumb-item active" aria-current="page">新增寵物</li>
    </ol>
  </nav>
  <h1 class="my-3">新增寵物資料</h1>
  <div class="row">
    <div class="col-6">
      <div class="card border border-3 border-dark border-opacity-50">
        <div class="card-body">
          <!-- <h5 class="card-title my-3">新增寵物</h5> -->
          <form name="form1" onsubmit="sendData(event)">
            <div class="mb-3">
              <div class="mb-3">
                <label for="name" class="form-label">名字</label>
                <input type="text" class="form-control" id="name" name="name">
                <div class="form-text"></div>
              </div>
              <div class="mb-3">
                <label for="tag" class="form-label">hashtag</label>
                <input type="text" class="form-control" id="tag" name="tag">
                <div class="form-text"></div>
              </div>
              <div class="mb-3">
                <label for="age" class="form-label">年齡</label>
                <input type="number" class="form-control" id="age" name="age">
                <div class="form-text"></div>
              </div>
              <!-- <div class="mb-3">
                <label for="personality_type" class="form-label">性格類型</label>
                <input type="text" class="form-control" id="personality_type" name="personality_type">
                <div class="form-text"></div>
              </div> -->
              <div class="mb-3">
                <label for="personality_type" class="form-label me-3 lh-lg">性格類型</label>
                <input type="radio" class="btn-check" name="personality_type" id="personality_type1" value="1" autocomplete="off" checked>
                <label class="btn btn-outline-secondary" for="personality_type1">敏感型</label>
                <input type="radio" class="btn-check" name="personality_type" id="personality_type2" value="樂天型" autocomplete="off">
                <label class="btn btn-outline-secondary" for="personality_type2">樂天型</label>
                <input type="radio" class="btn-check" name="personality_type" id="personality_type3" value="獨立型" autocomplete="off">
                <label class="btn btn-outline-secondary" for="personality_type3">獨立型</label>
                <input type="radio" class="btn-check" name="personality_type" id="personality_type4" value="自信型" autocomplete="off">
                <label class="btn btn-outline-secondary" for="personality_type4">自信型</label>
                <input type="radio" class="btn-check" name="personality_type" id="personality_type5" value="適應型" autocomplete="off">
                <label class="btn btn-outline-secondary" for="personality_type5">適應型</label>
                <div class="form-text"></div>
              </div>
              <!-- <div class="mb-3">
                <label for="type" class="form-label">種類</label>
                <input type="text" class="form-control" id="type" name="type">
                <div class="form-text"></div>
              </div> -->
              <!-- <div class="mb-3">
                <label for="sex" class="form-label">性別</label>
                <input type="text" class="form-control" id="sex" name="sex">
                <div class="form-text"></div>
              </div> -->
              <div class="mb-3">
                <label for="type" class="form-label me-3 lh-lg">種類</label>
                <input type="radio" class="btn-check" name="type" id="type-dog" value="1" autocomplete="off" checked>
                <label class="btn btn-outline-secondary" for="type-dog">狗狗</label>
                <input type="radio" class="btn-check" name="type" id="type-cat" value="貓" autocomplete="off">
                <label class="btn btn-outline-secondary" for="type-cat">貓貓</label>
                <div class="form-text"></div>
              </div>
              <div class="mb-3">
                <label for="sex" class="form-label me-3 lh-lg">性別</label>
                <input type="radio" class="btn-check" name="sex" id="sex-boy" value="1" autocomplete="off" checked>
                <label class="btn btn-outline-secondary" for="sex-boy">男生</label>
                <input type="radio" class="btn-check" name="sex" id="sex-girl" value="母" autocomplete="off">
                <label class="btn btn-outline-secondary" for="sex-girl">女生</label>
                <div class="form-text"></div>
              </div>
              <div class="mb-3">
                <label for="adopted" class="form-label me-3 lh-lg">是否被領養</label>
                <input type="radio" class="btn-check" name="adopted" id="adopted-True" value="1" autocomplete="off" checked>
                <label class="btn btn-outline-secondary" for="adopted-True">是</label>
                <input type="radio" class="btn-check" name="adopted" id="adopted-False" value="否" autocomplete="off">
                <label class="btn btn-outline-secondary" for="adopted-False">否</label>
                <div class="form-text"></div>
              </div>
              <!-- <label for="adopted" class="form-label me-3">是否被領養</label>
              <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                <input type="radio" class="btn-check" name="adopted" id="adoptedTrue" autocomplete="off" checked>
                <label class="btn btn-outline-secondary" for="adoptedTrue">是</label>
                <input type="radio" class="btn-check" name="adopted" id="adoptedFalse" autocomplete="off">
                <label class="btn btn-outline-secondary" for="adoptedFalse">否</label>
              </div> -->
              <div class="input-group mb-3">
                <label for="file" class="form-label me-3 lh-lg">上傳寵物照片</label>
                <!-- <label class="input-group-text" for="inputGroupFile01"></label> -->
                <input type="file" class="form-control" id="inputGroupFile01">
              </div>
              <!-- <div class="input-group mb-3">
                <input type="file" class="form-control" id="inputGroupFile02">
                <label class="input-group-text" for="inputGroupFile02">Upload</label>
              </div> -->
            </div>
            <div class="d-flex justify-content-end mt-5">
              <button type="reset" class="btn btn-secondary w-25 mx-4">CANCEL</button>
              <button type="submit" class="btn btn-dark w-25 mx-4">SUBMIT</button>
            </div>
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
        <h1 class="modal-title fs-5">資料新增結果</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-success" role="alert"><i class="fa-regular fa-circle-check me-2"></i>資料新增成功</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續新增</button>
        <a type="button" href="./pet_list.php" class="btn btn-dark">回列表頁</a>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="failureModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5">資料沒有新增</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-danger" role="alert"><i class="fa-regular fa-circle-xmark me-2"></i>資料新增失敗</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">繼續新增</button>
        <a type="button" href="./pet_list.php" class="btn btn-dark">回列表頁</a>
      </div>
    </div>
  </div>
</div>

<?php include __DIR__ . "/parts/4_footer.php" ?>
<?php include __DIR__ . "/parts/5_script.php" ?>
<script>
  const {
    name: nameField,
    tag: tagField,
    age: ageFiled,
  } = document.form1;

  function sendData(event) {
    // 欄位外觀要回復原來狀態
    nameField.style.border = "1px solid #ccc";
    nameField.nextElementSibling.innerHTML = "";
    tagField.style.border = "1px solid #ccc";
    tagField.nextElementSibling.innerHTML = "";
    ageFiled.style.border = "1px solid #ccc";
    ageFiled.nextElementSibling.innerHTML = "";

    event.preventDefault(); //不要讓有外觀的表單用傳統方式送出

    let isPass = true; // 有沒有通過檢查，預設為T

    // TODO: 檢查資料格式

    // 姓名 長度2以上
    if (nameField.value.length < 2) {
      isPass = false;
      nameField.style.border = "2px solid red";
      nameField.nextElementSibling.innerHTML = "請輸入正確姓名";
    }

    if (tagField.value.length < 2) {
      isPass = false;
      tagField.style.border = "2px solid red";
      tagField.nextElementSibling.innerHTML = "請輸入hashtag";
    }

    // 年齡 0~30
    if (ageFiled.value > 30 || ageFiled.value <= 0) {
      isPass = false;
      ageFiled.style.border = "2px solid red";
      ageFiled.nextElementSibling.innerHTML = "請輸入正確年齡";
    }

    // 如果欄位都有通過檢查，才發ajax
    if (isPass) {
      const fd = new FormData(document.form1); // 看成沒有外觀的表單

      // console.log(fd);

      // for (let i of fd.entries()){
      //     console.log(i);
      // }

      fetch("pet_add-api.php", {
          method: "POST",
          body: fd
        })
        .then(r => r.json())
        .then(result => {
          console.log(result);
          if (result.success) {
            // alert("資料新增成功");
            successModal.show();
          } else {
            // alert("資料新增失敗");
            if (result.error) {
              failureInfo.innerHTML = result.error;
            } else {
              failureInfo.innerHTML = `<i class="fa-regular fa-circle-xmark me-2"></i>"資料新增失敗"`;
            }
            failureModal.show();
          }
        })
        .catch(ex => {
          console.log(ex);
          // alert("資料新增發生錯誤"+ex);
          failureInfo.innerHTML = `<i class="fa-regular fa-circle-xmark me-2"></i>"資料新增失敗"` + ex;
          failureModal.show();
        })

    }

  }

  const successModal = new bootstrap.Modal('#successModal');
  const failureModal = new bootstrap.Modal('#failureModal');
  const failureInfo = document.querySelector('#failureModal .alert-danger');
</script>
<?php include __DIR__ . "/parts/6_foot.php" ?>