<?php
require __DIR__ . "/parts/pdo-connect.php";
$title = "寵物基本資訊";
$pageName = "pet_info_list";

$page = isset($_GET["page"]) ? intval($_GET["page"]) : 1;
if ($page < 1) {
  header("Location: ?page=1");
  exit;
}

# 每一頁有幾筆
$perPage = 20;

# 機算資料總筆數
$t_sql = "SELECT COUNT(1) FROM address_book";
$t_stmt = $pdo->query($t_sql);
$totalRows = $t_stmt->fetch(PDO::FETCH_NUM)[0];
$totalPages = ceil($totalRows / $perPage);  # 總頁數
$rows = [];

if ($totalPages > 0) {
  # 有資料才往下
  if ($page > $totalPages) {
    header("Location: ?page=" . $totalPages);
    exit;
  }
  #取得分頁資料
  $sql = sprintf("SELECT * FROM address_book order by sid DESC LIMIT %s ,%s", ($page - 1) * $perPage, $perPage);
  $rows = $pdo->query($sql)->fetchAll();
}
?>

<?php include __DIR__ . "/parts/1_head.php" ?>
<?php include __DIR__ . "/parts/2_nav.php" ?>
<?php include __DIR__ . "/parts/3_side_nav.php" ?>
<div class="container">
  <nav class="my-3" style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a class="text-reset text-decoration-none" href="index_.php">Take Pet Away</a></li>
      <li class="breadcrumb-item"><a class="text-reset text-decoration-none" href="#">收容動物</a></li>
      <li class="breadcrumb-item active" aria-current="page">基本資訊</li>
    </ol>
  </nav>
  <h1 class="my-3">寵物基本資料</h1>
  <div class="row">
    <div class="col">
      <table class="table table-striped table-hover lh-lg">
        <thead>
          <tr class="table-dark">
            <th><i class="fa-solid fa-trash"></i></th>
            <th scope="col">#</th>
            <th scope="col">名字</th>
            <th scope="col">性格類型</th>
            <th scope="col">hashtag</th>
            <th scope="col">年齡</th>
            <th scope="col">種類</th>
            <th scope="col">性別</th>
            <!-- <th scope="col">品種</th> -->
            <th scope="col">是否被領養</th>
            <th><i class="fa-solid fa-pen-to-square"></i></th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($rows as $r) : ?>
            <tr>
              <td>
                <a href="javascript: deleteOne(<?= $r['sid'] ?>)"><i class="fa-solid fa-trash text-secondary"></i></a>
              </td>
              <td><?= $r["sid"] ?></td>
              <td><?= $r["name"] ?></td>
              <td><?= $r["mobile"] ?></td>
              <td><?= $r["name"] ?></td>
              <td><?= $r["email"] ?></td>
              <td><?= $r["name"] ?></td>
              <td><?= $r["birthday"] ?></td>
              <td><?= $r["birthday"] ?></td>
              <td><a href="edit.php?sid=<?= $r["sid"] ?>"><i class="fa-solid fa-pen-to-square text-secondary"></a></i></td>
            </tr>

            <!-- 
              <td><?= $r["pet_id"] ?></td>
              <td><?= $r["name"] ?></td>
              <td><?= $r["personality_type"] ?></td>
              <td><?= $r["tag"] ?></td>
              <td><?= $r["age"] ?></td> 
              <td><?= $r["type"] ?></td> 
              <td><?= $r["sex"] ?></td> 
              <td><?= $r["adopted"] ?></td> 
            -->

          <?php endforeach ?>
        </tbody>
      </table>
    </div>
  </div>
  <div class="row">
    <div class="col">
      <nav aria-label="Page navigation example">
        <ul class="pagination d-flex justify-content-center">
          <li class="page-item <?= $page == 1 ? "disabled" : "" ?>">
            <a class="page-link" href="?page=1"><i class="fa-solid fa-angles-left"></i></a>
          </li>
          <li class="page-item <?= $page == 1 ? "disabled" : "" ?>">
            <a class="page-link" href="?page=<?= $page - 1 ?>"><i class="fa-solid fa-angle-left"></i></a>
          </li>
          <?php for ($i = $page - 2; $i <= $page + 2; $i++) : ?>
            <?php if ($i >= 1 and $i < $totalPages) : ?>
              <li class="page-item <?= $i != $page ?: "active" ?>">
                <a class="page-link" href="?page= <?= $i ?>"><?= $i ?></a>
              </li>
            <?php endif ?>
          <?php endfor ?>
          <li class="page-item <?= $page == $totalPages ? "disabled" : "" ?>">
            <a class="page-link" href="?page=<?= $page + 1 ?>"><i class="fa-solid fa-angle-right"></i></a>
          </li>
          <li class="page-item <?= $page == $totalPages ? "disabled" : "" ?>">
            <a class="page-link" href="?page=<?= $totalPages ?>"><i class="fa-solid fa-angles-right"></i></a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</div>
<?php include __DIR__ . "/parts/5_script.php" ?>
<script>
  const myRows = <?= json_encode($rows, JSON_UNESCAPED_UNICODE) ?>;
  // console.log(myRows);

  function deleteOne(sid) {
    if (confirm(`是否要刪除編號為 ${sid} 的項目?`)) {
      location.href = `delete.php?sid=${sid}`;
    }
  }
</script>
<?php include __DIR__ . "/parts/6_foot.php" ?>