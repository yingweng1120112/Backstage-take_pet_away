<!-- 設定筆數上限 -->
<!-- 1.取需要的資料 -->
<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '心理測驗';
$pageName = 'list';


//6-1.計算每頁有幾筆
// $perPage = 12;

//5.計算資料總筆數
$t_sql = "SELECT COUNT(1) FROM psycological_test";
$t_stmt = $pdo->query($t_sql);
$totalRows = $t_stmt->fetch(PDO::FETCH_NUM)[0];



//2-1.取得分頁資料//7-2.更改分頁筆數排序
$sql = sprintf("SELECT * FROM 
  psycological_test ");
//2.讀取資料表
$rows = $pdo->query($sql)->fetchAll();


?>

<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>

<section>
  <div class="container-fluid px-4">
    <h1 class="mt-4">測驗題目</h1>
    <ol class="breadcrumb mb-4">
      <li class="breadcrumb-item"><a href="index_.php">首頁</a></li>
      <li class="breadcrumb-item active">測驗題目</li>
    </ol>
    <div class="card mb-4">
      <div class="card-header">
        <i class="fas fa-table me-1"></i>
        題目與對應分數
      </div>
      <div class="card-body table-responsive">
        <table class="table table-striped">
          <thead>
            <tr>
              <!-- 13.新增刪除編輯的功能按鈕 -->
              <th><i class="fa-solid fa-trash"></i></th>
              <th>#</th>
              <th>題目</th>
              <th>選項A</th>
              <th>選項B</th>
              <th>選項C</th>
              <th>選項D</th>
              <th>選項A分數</th>
              <th>選項B分數</th>
              <th>選項C分數</th>
              <th>選項D分數</th>
              <th>
                <!-- 完全新增一筆資料 將question_id設為空值 -->
              <a href="hearttest_question_add.php?question_id=" class="btn btn-primary btn-sm">新增題目</a>
              </th>
            </tr>
          </thead>
          <tbody>
            <!-- 4.用表格輸出資料 -->
            <?php foreach ($rows as $r) : ?>
              <tr>
                <td>
                  <!-- 13-1. 符號設定-->
                  <a href="hearttest_question_delete.php?question_id=<?= $r['question_id'] ?>">
                    <i class="fa-solid fa-trash"></i>
                  </a>
                </td>
                <td><?= $r['question_id'] ?></td>
                <td><?= $r['question_content'] ?></td>
                <td><?= $r['option_a'] ?></td>
                <td><?= $r['option_b'] ?></td>
                <td><?= $r['option_c'] ?></td>
                <td><?= $r['option_d'] ?></td>
                <td><?= $r['option_value_a'] ?></td>
                <td><?= $r['option_value_b'] ?></td>
                <td><?= $r['option_value_c'] ?></td>
                <td><?= $r['option_value_d'] ?></td>
                <!-- 13-2.符號設定 -->
                <td>
                  <a href="hearttest_question_edit.php?question_id=<?= $r['question_id'] ?>">
                    <p class="btn btn-outline-success btn-sm">變更</p>
                  </a>
                </td>
              </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>




<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<script>
  //3.php 倒資料給 js
  const myRows = <?= json_encode($rows, JSON_UNESCAPED_UNICODE) ?>;

  console.log(myRows);
</script>
<?php include __DIR__ . '/parts/6_foot.php' ?>