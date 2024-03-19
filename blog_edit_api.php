<?php

require __DIR__ . '/parts/pdo-connect.php';
header('Content-Type: application/json');

$output = [
  'success' => false,
  'postData' => $_POST, # 除錯用
  'error' => '',
  'code' => 0, # 除錯或追踪程式碼
];



if (!empty($_POST['pet_id'])) {

  $sql = "UPDATE `blog` SET
  `pet_id`=?,`content`= ? WHERE `blog_id`= ? ";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([
    $_POST['pet_id'],
    $_POST['content'],
    $_POST['blog_id']
  ]);

  $output['success'] = boolval($stmt->rowCount());
}

header('Content-Type: application/json');

echo json_encode($output, JSON_UNESCAPED_UNICODE);
