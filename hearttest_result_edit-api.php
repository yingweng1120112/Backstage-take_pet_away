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


if (empty($_POST['personality_type']) || empty($_POST['type__content'])) {
    $isPass = false;
}

$pic = ($_POST['pic'] === "") ? null : $_POST['pic'];

if ($isPass) {
    $sql = "UPDATE `psycological_test_result` SET
    `pic`=?,
    `type__content`=?
    WHERE `personality_type`=?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        $pic,
        $_POST['type__content'],
        $_POST['personality_type']
    ]);

    $output['success'] = boolval($stmt->rowCount());
}

echo json_encode($output, JSON_UNESCAPED_UNICODE);
