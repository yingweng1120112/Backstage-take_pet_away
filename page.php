<?php
require __DIR__ . '/parts/pdo-connect.php';
$title = "POST";



#page轉換整數
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;

#page輸入小於1,則直接到page=1的頁面
if ($page < 1) {
  header('Location: ?page=1');
  exit;
}

# 每一頁有幾筆
$perPage = 10;

# 計算總筆數
$total_sql = "SELECT COUNT(1) FROM blog";
$total_stmt = $pdo->query($total_sql);
$totalRows = $total_stmt->fetch(PDO::FETCH_NUM)[0];
$totalPages = ceil($totalRows / $perPage); # 總頁數
$rows = []; # 預設值為空陣列


if ($totalRows > 0) {
  # 有資料時, 才往下進行
  if ($page > $totalPages) {
    header('Location: ?page=' . $totalPages);
    exit;
  }
  $sql = sprintf("SELECT * FROM blog ORDER BY blog_id DESC LIMIT %s, %s", ($page - 1) * $perPage, $perPage);
  $rows = $pdo->query($sql)->fetchAll();
}

?>






<?php include __DIR__ . '/parts/1_head.php' ?>
<?php include __DIR__ . '/parts/2_nav.php' ?>
<?php include __DIR__ . '/parts/3_side_nav.php' ?>


<!-- 按鈕顯示 -->
<div class="row">
  <div class="col">
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
        <!-- page +-5 的按鈕 -->
        <?php for ($i = $page - 5; $i <= $page + 5; $i++) : ?>
          <!-- page >=1 或 <= 總頁數 才會有該數字的按鈕 -->
          <?php if ($i >= 1 and $i <= $totalPages) : ?>
            <!-- page 的按鈕反白 -->
            <li class="page-item <?= $i != $page ?: 'active' ?>">
              <a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a>
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

<!-- 資料表顯示 -->
<div class="row">
  <div class="col">
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>blog_id</th>
          <th>pet_id</th>
          <th>content</th>
          <th>picture</th>
          <th>time</th>
          <th><i class="fa-solid fa-file-pen"></i></th>
          <th><i class="fa-solid fa-trash"></i></th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($rows as $r) : ?>
          <tr>
            <td><?= $r['blog_id'] ?></td>
            <td><?= $r['pet_id'] ?></td>
            <td><?= $r['content'] ?></td>
            <td><?= $r['pic'] ?></td>
            <td><?= $r['time'] ?></td>
            <td>
              <a href="page_edit.php?blog_id=<?= $r['blog_id'] ?>">
                <i class="fa-solid fa-file-pen"></i>
              </a>
            </td>
            <td>
              <a href="javascript: deleteOne(<?= $r['blog_id'] ?>)">
                <i class="fa-solid fa-trash"></i>
              </a>
            </td>
          </tr>
        <?php endforeach ?>

      </tbody>
    </table>

  </div>
</div>
<a href="page_plus.php">+</a>
<?php include __DIR__ . '/parts/4_footer.php' ?>
<?php include __DIR__ . '/parts/5_script.php' ?>

<script>
  function deleteOne(blog_id) {
    if (confirm(`是否要刪除編號為 ${blog_id} 的項目?`)) {
      location.href = `delete.php?blog_id=${blog_id}`;
    }
  }
</script>

<?php include __DIR__ . '/parts/6_foot.php' ?>