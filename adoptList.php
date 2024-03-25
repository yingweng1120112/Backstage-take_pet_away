<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = '通訊錄列表';
$pageName = 'adoptList';

$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
if ($page < 1) {
  header('Location: ?page=1');
  exit;
}

# 每一頁有幾筆
$perPage = 10;

# 計算總筆數
$t_sql = "SELECT COUNT(1) FROM online_virtual_adoption_form";
$t_stmt = $pdo->query($t_sql);
$totalRows = $t_stmt->fetch(PDO::FETCH_NUM)[0];
$totalPages = ceil($totalRows / $perPage); # 總頁數
$rows = []; # 預設值為空陣列
if ($totalRows > 0) {
  # 有資料時, 才往下進行
  if ($page > $totalPages) {
    header('Location: ?page=' . $totalPages);
    exit;
  }

  # 取得分頁的資料
  $sql = sprintf("SELECT * FROM online_virtual_adoption_form ORDER BY adopt_id  DESC LIMIT %s, %s", ($page - 1) * $perPage, $perPage);
  $rows = $pdo->query($sql)->fetchAll();
}

?>
<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>
<div class="container">
  <div class="row ">
    <h1 class="mt-4 fw-bold lh-lg text-secondary fs-2">線上認養紀錄</h1>
    <ol class="breadcrumb mb-4">
      <li class="breadcrumb-item"><a href="index.php">首頁</a></li>
      <li class="breadcrumb-item active">線上認養紀錄</li>
    </ol>
    <div class="col  ">
      <table class="table table-striped table-hover mt-2 border border-3 border-secondary">
        <thead>
          <tr class="text-center text-secondary fs-4 ">
            <th>認養#</th>
            <th>使用者ID</th>
            <th>寵物ID</th>
            <th>捐款方式</th>
            <th>捐款金額</th>
            <th>付款方式</th>
            <th>捐款用途</th>
            <th>捐贈證明寄送</th>
            <th><i></i></th>
            <th><i></i></th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <?php /*
          # PHP 區塊註解
          */ ?>
          <?php foreach ($rows as $r) : ?>
            <tr class="text-center text-secondary fs-5">
              <td class="d-flex justify-content-center"><?= $r['adopt_id'] ?></td>
              <td><?= $r['user_id'] ?></td>
              <td><?= $r['pet_id'] ?></td>
              <td><?= $r['donation_method'] ?></td>
              <td><?= $r['amount'] ?></td>
              <td><?= $r['payment'] ?></td>
              <td><?= $r['donation'] ?></td>
              <td><?= $r['donate_address'] ?></td>
              <td>
                <a href="adoptEdit.php?adopt_id=<?= $r['adopt_id'] ?>" class="color-primary">
                  <i class="fa-solid fa-file-pen text-secondary d-flex justify-content-center "></i>
                </a>
              </td>
              <td>
                <a href="javascript: deleteOne(<?= $r['adopt_id'] ?>)">
                  <i class="fa-solid fa-trash text-primary d-flex justify-content-center text-secondary"></i>
                </a>
              </td>
            </tr>
          <?php endforeach ?>

        </tbody>
      </table>

    </div>
  </div>

  <div class="row mt-5">
    <div class="col d-flex justify-content-center">
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item <?= $page == 1 ? 'disabled' : '' ?>">
            <a class="page-link" href="?page=1">
              <i class="fa-solid fa-angles-left"></i>
            </a>
          </li>
          <li class="page-item <?= $page == 1 ? 'disabled' : '' ?>">
            <a class="page-link" href="?page=<?= $page - 1 ?>">
              <i class="fa-solid fa-angle-left"></i>
            </a>
          </li>
          <?php for ($i = $page - 5; $i <= $page + 5; $i++) : ?>
            <?php if ($i >= 1 and $i <= $totalPages) : ?>
              <li class="page-item  <?= $i != $page ?: 'active' ?>">
                <a class="page-link bd-secondary" href="?page=<?= $i ?>"><?= $i ?></a>
              </li>
            <?php endif ?>
          <?php endfor ?>
          <li class="page-item <?= $page == $totalPages ? 'disabled' : '' ?>">
            <a class="page-link" href="?page=<?= $page + 1 ?>">
              <i class="fa-solid fa-angle-right"></i>
            </a>
          </li>
          <li class="page-item <?= $page == $totalPages ? 'disabled' : '' ?>">
            <a class="page-link" href="?page=<?= $totalPages ?>">
              <i class="fa-solid fa-angles-right"></i>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</div>
<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>
<script>
  const myRows = <?= json_encode($rows, JSON_UNESCAPED_UNICODE) ?>;
  // console.log(myRows);

  function deleteOne(adopt_id) {
    if (confirm(`是否要刪除編號為 ${adopt_id } 的項目?`)) {
      location.href = `adoptDelete.php?adopt_id=${adopt_id }`;
    }
  }
</script>
<?php include __DIR__ . '/parts/6_foot.php' ?>