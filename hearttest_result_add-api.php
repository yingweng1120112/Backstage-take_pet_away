<?php
// require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/parts/pdo-connect.php';
header("Content-Type: application/json");


//回應給用戶端的欄位
$output = [
    'success' => true,
    'postData' => $_POST,
    'error'  => '',
    'code' => 0,
];

$isPass = true;

//有無表單送過來 若表單不是空的就處理
if (empty($_POST['personality_type']) || empty($_POST['type__content'])) {
  $isPass = false;
}

$pic = !empty($_POST['pic']) ? $_POST['pic'] : null;

if ($isPass) {
    $sql = "INSERT INTO `psycological_test_result`(
    `personality_type`, `pic`, `type__content`
  ) VALUES (
    ?,?,?     
  )";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        $_POST['personality_type'],
        $pic,
        $_POST['type__content']
    ]);

    $output['success'] = boolval($stmt->rowCount());
}


echo json_encode($output, JSON_UNESCAPED_UNICODE);
