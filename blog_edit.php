<?php

require __DIR__ . '/parts/pdo-connect.php';

$title = '編輯';
$pageName = 'edit';

$blog_id = isset($_GET['blog_id']) ? intval($_GET['blog_id']) : 0;
if (empty($blog_id)) {
  header('Location: blog.php');
  exit;
}

$r = $pdo->query("SELECT * FROM blog WHERE blog_id = $blog_id")->fetch();
if (empty($r)) {
  header('Location: blog.php');
  exit;
}

?>

<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>
<div class="container">
  <div class="row">
    <div class="col-6">
      <div class="card">

        <div class="card-body">
          <h5 class="card-title">編輯</h5>

          <form name="form1" onsubmit="sendData(event)">
            <input type="hidden" class="form-control" name="blog_id" value="<?= $r['blog_id'] ?>">
            <div class="mb-3">
              <input type="hidden" class=" form-control" id="pet_id" name="pet_id" value="<?= $r['pet_id'] ?>">
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <label for="content" class="form-label">content</label>
              <textarea class="form-control" name="content" id="content" cols="30" rows="3"><?= $r['content'] ?></textarea>
              <div class="form-text"></div>
            </div>
            <div class="mb-3">
              <input type="file" id="previewImage" name="avatar" accept="image/jpeg,image/png" />
              <br />
              <img id="show_image" src="" />
            </div>
            <div id="now_pic">
              <!-- 原始圖片 -->
              <input type="hidden" name="pic" value="<?= $r['pic'] ?>">
              <p>當前檔案</p> <img width="200px" src="uploads/<?= $r['pic'] ?>" alt="">
            </div>
            <button type="submit" class="btn btn-primary">修改</button>
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
  const {
    content: contentField,
  } = document.form1;



  function sendData(e) {

    contentField.style.border = "1px solid #CCC";
    contentField.nextElementSibling.innerHTML = '';

    e.preventDefault(); // 不要讓有外觀的表單以傳統的方式送出

    $isPass = true;


    if (contentField.value.length < 1) {
      $isPass = false;
      contentField.style.border = "2px solid red";
      contentField.nextElementSibling.innerHTML = '請輸入正確的內容';
    }

    if ($isPass) {
      const fd = new FormData(document.form1); // 看成沒有外觀的表單
      fetch('blog_edit_api.php', {
          method: 'POST',
          body: fd
        })
        .then(r => r.json())
        .then(result => {
          console.log(result);
          if (result.success) {
            // alert('資料新增成功')
            successModal.show();
          } else {
            // alert('資料新增失敗')
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
  var imageProc = function(input) {
    if (input.files && input.files[0]) {
      // 建立一個 FileReader 物件
      var reader = new FileReader();
      // 當檔案讀取完後，所要進行的動作
      reader.onload = function(e) {
        // 顯示圖片
        $("#show_image")
          .attr("src", e.target.result)
          .css("height", "100px")
          .css("width", "100px");
        $("#now_pic").css("display", "none");
      };
      reader.readAsDataURL(input.files[0]);
    }
  };

  $(document).ready(function() {
    // 綁定事件
    $("#previewImage").change(function() {
      imageProc(this);
    });
  });
  const successModal = new bootstrap.Modal('#successModal');
  const failureModal = new bootstrap.Modal('#failureModal');
  const failureInfo = document.querySelector('#failureModal .alert-danger');
</script>


<?php include __DIR__ . '/parts/6_foot.php' ?>