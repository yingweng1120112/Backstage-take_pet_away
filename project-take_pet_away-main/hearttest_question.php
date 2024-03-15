<!-- 心理測驗題目 暫連上課資料庫(參考用)-->

<!-- 以下註解是筆記 懶得刪 請忽略 -->
<!-- 1.165取需要的資料 -->
<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '通訊錄列表';
$pageName = 'list';
$pageName = 'list';
$pageName = 'list';
$pageName = 'list';
//7-1.分頁功能
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;

//10-1.限制 $page 在合理範圍內(讓使用者在輸入非數字的頁數時會跳轉到第一頁)
if ($page < 1) {
  header('Location: ?page=1');
  exit; //跳轉後結束 不繼續執行
}
//6-1.計算每頁有幾筆
$perPage = 20;

//5.計算資料總筆數
$t_sql = "SELECT COUNT(1) FROM address_book";
$t_stmt = $pdo->query($t_sql);
$totalRows = $t_stmt->fetch(PDO::FETCH_NUM)[0];
//ceil 無條件進位
$totalPages = ceil($totalRows / $perPage); //6-2.計算總頁數

//10-2.讓使用者在輸入超過的頁數時會跳轉到最後頁
$rows = []; //預設為空陣列
if ($totalRows > 0) {
  //有資料時 再往下進行
  if ($page > $totalPages) {
    header('Location: ?page=' . $totalPages);
    exit;
  }

  //2-1.取得分頁資料//7-2.更改分頁筆數排序
  $sql = sprintf("SELECT * FROM address_book order by sid DESC  LIMIT %s, %s", ($page - 1) * $perPage, $perPage);
  //2.讀取資料表
  $rows = $pdo->query($sql)->fetchAll();
}

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
      <div class="card-body">
        <table class="table table-striped">
          <thead>
            <tr>
              <!-- 13.新增刪除編輯的功能按鈕 -->
              <th><i class="fa-solid fa-trash"></i></th>
              <th>#</th>
              <th>姓名</th>
              <th>手機</th>
              <th>Email</th>
              <th>生日</th>
              <th>地址</th>
              <th><i class="fa-solid a-file-pen"></i></th>
            </tr>
          </thead>
          <tbody>
            <?php /*
          //php區塊註解  (若用<!--  --> html註解 php部分還是會執行)
          */ ?>
            <?php foreach ($rows as $r) : ?>
              <tr>
                <td>
                  <!-- 13-1. 符號設定-->
                  <a href="delete.php?sid=<?= $r['sid'] ?>">
                    <i class="fa-solid fa-trash"></i>
                  </a>
                </td>
                <td><?= $r['sid'] ?></td>
                <td><?= $r['name'] ?></td>
                <td><?= $r['mobile'] ?></td>
                <td><?= $r['email'] ?></td>
                <td><?= $r['birthday'] ?></td>
                <td><?= htmlentities($r['address']) ?></td>
                <!--跳脫 避免XSS攻擊(惡意輸入JS程式碼)  較建議-->
                <!--<td><?= strip_tags($r['address']) ?></td> 去除標籤-->
                <!-- 13-2. -->
                <td>
                  <a href="edit.php?sid=<?= $r['sid'] ?>">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </a>
                </td>
              </tr>
            <?php endforeach ?>
          </tbody>
        </table>
        <!-- 6-3.分頁按鈕 -->
        <div class="col">
          <!-- https://getbootstrap.com/docs/5.3/components/pagination/ -->
          <nav aria-label="Page navigation example">
            <ul class="pagination">
              <!-- 12.按鈕功能(往下一頁、跳到最後頁) -->
              <li class="page-item" <?= $page == 1 ? 'disabled' : '' ?>>
                <!-- 11.跳頁按鈕的外觀 -->
                <!-- https://fontawesome.com/search?q=angle&o=r&m=free -->
                <a class="page-link" href="?page=1">
                  <i class="fa-solid fa-angles-left"></i>
                </a>
              </li>

              <li class="page-item" <?= $page == 1 ? 'disabled' : '' ?>>
                <a class="page-link" href="?page=<?= $page - 1 ?>">
                  <i class="fa-solid fa-angle-left"></i>
                </a>
              </li>
              <!-- 9.最多 11 個頁碼按鈕 -->
              <?php for ($i = $page - 5; $i <= $page + 5; $i++) : ?>
                <?php if ($i >= 1 and $i <= $totalPages) : ?>
                  <!-- 8.當前頁碼的提示修改 -->
                  <li class="page-item <?= $i == $page ? 'active' : '' ?>">
                    <!-- href 是省略資源檔(因為前面都相同) ?page=10#abc -->
                    <a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a>
                  </li>
                <?php endif ?>
              <?php endfor ?>

              <li class="page-item" <?= $page == $totalPages ? 'disabled' : '' ?>>
                <a class="page-link" href="?page=<?= $page + 1 ?>">
                  <i class="fa-solid fa-angle-right"></i>
                </a>
              </li>

              <li class="page-item" <?= $page == $totalPages ? 'disabled' : '' ?>>
                <a class="page-link" href="?page=<?= $totalPages ?>">
                  <i class="fa-solid fa-angles-right"></i>
                </a>
              </li>

            </ul>
          </nav>
        </div>
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