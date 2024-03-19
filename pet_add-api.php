<?php
// require __DIR__."/parts/admin-required.php";
require __DIR__ . "/parts/pdo-connect.php";
header("Content-Type: application/json");

# 回應給用戶端的欄位（格式json）
$output = [
  "success" => false,
  "postData" => $_POST,   #除錯用
  "error" => "",
  "code " => 0,   #除錯或追蹤程式碼用
];

if (!empty($_POST["name"])) {
  $isPass = true;

  // TODO: 檢查資料格式
  if (mb_strlen($_POST["name"]) < 2) {
    $isPass = false;
    $output["error"] = "姓名請填2個字以上";
  }
  // if (mb_strlen($_POST["tag"]) < 2) {
  //   $isPass = false;
  //   $output["error"] = "請填2個字以上";
  // }

  if ($isPass) {
    // 避免 SQL injection
    $sql = "INSERT INTO `pet_info`(
              `name`, `personality_type`, `tag`, `age`, `type`, `sex`, `adopted`
            ) VALUES (
              ?,?,?,?,?,?,?
            )";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
      $_POST['name'],
      $_POST['personality_type'],
      $_POST['tag'],
      $_POST['age'],
      $_POST['type'],
      $_POST['sex'],
      $_POST['adopted'],
    ]);


    $output["success"] = boolval($stmt->rowCount());
  }
}

echo json_encode($output, JSON_UNESCAPED_UNICODE);