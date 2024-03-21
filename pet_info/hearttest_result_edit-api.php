<?php
require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/parts/pdo-connect.php';
$dir = __DIR__ . '/uploads/'; # 存放檔案的資料夾
header("Content-Type: application/json");


//回應給用戶端的欄位
$output = [
    'success' => true,
    'postData' => $_POST,
    'error'  => '',
    'file' => '',
];

$exts = [   # 檔案類型的篩選
  'image/jpeg' => '.jpg',
  'image/png' =>  '.png',
  'image/webp' => '.webp',
];

$output['file'] = isset($_FILES['pic']) ? $_FILES['pic'] : '';
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
    $sql = "UPDATE `psycological_test_result` SET
    `personality_type`=?,
    `pic`=?,
    `type__content`=?
    WHERE `result_id`=?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        $_POST['personality_type'],
        $output['file'],
        $_POST['type__content'],
        $_POST['result_id']
    ]);

    $output['success'] = boolval($stmt->rowCount());
}

echo json_encode($output, JSON_UNESCAPED_UNICODE);
