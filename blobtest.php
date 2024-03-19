<?php

require __DIR__ . '/parts/pdo-connect.php';

$output = [
  'success' => false,
  'postData' => $_POST, # 除錯用
  'error' => '',
  'code' => 0, # 除錯或追踪程式碼
];



if (!empty($_POST['pet_id'])) {

  $sql = "INSERT INTO `blog`(
    `pet_id`, `content`,`pic`,`time`
    ) VALUES(
    ?,?,?,NOW()
  )";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([
    $_POST['pet_id'],
    $_POST['content'],
    $_POST['imagestring']
  ]);

  $output['success'] = boolval($stmt->rowCount());
}
header('Content-Type: application/json');

echo json_encode($output, JSON_UNESCAPED_UNICODE);
