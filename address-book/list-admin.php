<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '通訊錄列表';
$pageName = 'list';

$page = isset($_GET['page']) ? intval($_GET['page']) : 1;

//讓使用者在輸入非數字的頁數時會跳轉到第一頁
if ($page < 1) {
  header('Location: ?page=1');
  exit; //跳轉後結束 不繼續執行
}
//每頁有幾筆
$perPage = 20;

//計算總筆數
$t_sql = "SELECT COUNT(1) FROM address_book";
$t_stmt = $pdo->query($t_sql);
$totalRows = $t_stmt->fetch(PDO::FETCH_NUM)[0];
//ceil 無條件進位
$totalPages = ceil($totalRows / $perPage); //總頁數

//讓使用者在輸入超過的頁數時會跳轉到最後頁
$rows = []; //預設為空陣列
if ($totalRows > 0) {
  //有資料時 再往下進行
  if ($page > $totalPages) {
    header('Location: ?page=' . $totalPages);
    exit;
  }

  //取得分頁資料
  $sql = sprintf("SELECT * FROM address_book order by sid DESC  LIMIT %s, %s", ($page - 1) * $perPage, $perPage);
  $rows = $pdo->query($sql)->fetchAll();
}

?>
<?php include __DIR__ . '/parts/html-head.php' ?>
<?php include __DIR__ . '/parts/navbar.php' ?>
<div class="container">
  <div class="row">
    <div class="col">
      <!-- https://getbootstrap.com/docs/5.3/components/pagination/ -->
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item" <?= $page == 1 ? 'disabled' : '' ?>>
            <a class="page-link" href="?page=1">
              <i class="fa-solid fa-angles-left"></i>
            </a>
          </li>

          <li class="page-item" <?= $page == 1 ? 'disabled' : '' ?>>
            <a class="page-link" href="?page=<?= $page - 1 ?>">
              <i class="fa-solid fa-angle-left"></i>
            </a>
          </li>

          <?php for ($i = $page - 5; $i <= $page + 5; $i++) : ?>
            <?php if ($i >= 1 and $i <= $totalPages) : ?>
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
    <div class="row">
      <div class="col">
        <table class="table table-bordered table-striped">
          <thead>
            <tr>
              <th><i class="fa-solid fa-trash"></i></th>
              <th>#</th>
              <th>姓名</th>
              <th>手機</th>
              <th>Email</th>
              <th>生日</th>
              <th>地址</th>
              <th><i class="fa-solid fa-file-pen"></i></th>
            </tr>
          </thead>
          <tbody>
            <?php /*
          //php區塊註解  (若用<!--  --> html註解 php部分還是會執行)
          */ ?>
            <?php foreach ($rows as $r) : ?>
              <tr>
                <td>
                  <!-- 假連結 -->
                  <a href="javascript: deleteOne(<?= $r['sid'] ?>)">
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
                <td>
                  <a href="edit.php?sid=<?= $r['sid'] ?>">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </a>
                </td>
              </tr>
            <?php endforeach ?>
          </tbody>
        </table>

      </div>
    </div>


  </div>
  <?php include __DIR__ . '/parts/scripts.php' ?>
  <script>
    const myRows = <?= json_encode($rows, JSON_UNESCAPED_UNICODE) ?>;

    //console.log(myRows);
    //刪除前確認
    function deleteOne(sid) {
      if (confirm(`是否要刪除編號為 ${sid} 的項目?`)) {
        location.href = `delete.php?sid=${sid}`;
      }
    }
  </script>
  <?php include __DIR__ . '/parts/html-foot.php' ?>