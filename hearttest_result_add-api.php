<?php
require __DIR__ . '/parts/admin-required.php';
$dir = __DIR__ . '/uploads/';
require __DIR__ . '/parts/pdo-connect.php';
header("Content-Type: application/json");


//回應給用戶端的欄位
$output = [
  'success' => true,
  'postData' => $_POST,
  'error'  => '',
  'code' => 0,
  'file' => ''
];
$exts = [   # 檔案類型的篩選
  'image/jpeg' => '.jpg',
  'image/png' =>  '.png',
  'image/webp' => '.webp',
];

if (!empty($_FILES) and !empty($_FILES['pic']) and $_FILES['pic']['error'] == 0) {
  # 如果類型有對應到副檔名
  $type = $_FILES['pic']['type'];
  if (!empty($exts[$type])) {
    $ext = $exts[$type]; # 副檔名
    $f = sha1($_FILES['pic']['name'] . uniqid()); # 隨機的主檔名
    if (move_uploaded_file($_FILES['pic']['tmp_name'], $dir . $f . $ext)) {
      $output['file'] = $f . $ext;
    }
  }
}


$isPass = true;


if (empty($_POST['personality_type']) || empty($_POST['type__content'])) {
  $isPass = false;
}

$pic = isset($_FILES['pic']) ? $_FILES['pic'] : null;



if ($isPass) {
  $sql = "INSERT INTO `psycological_test_result`(
    `personality_type`, `pic`, `type__content`
  ) VALUES (
    ?,?,?     
  )";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([
    $_POST['personality_type'],
    $output['file'],
    $_POST['type__content']
  ]);

  $output['success'] = boolval($stmt->rowCount());
}

echo json_encode($output, JSON_UNESCAPED_UNICODE);
