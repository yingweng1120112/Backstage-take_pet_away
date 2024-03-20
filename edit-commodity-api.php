<?php
require __DIR__ . '/parts/pdo-connect.php';
header('Content-Type: application/json');

$output = [
    'success' => false,
    'postDate' => $_POST,
    'error' => '',
    'code' => 0,
];

if (!empty($_POST['commodity_id']) && !empty($_POST['name'])) {
    $isPass = true;


    if (mb_strlen($_POST['name']) < 3) {
        $isPass = false;
        $output['error'] = '請輸入完整商品名稱';
    }
    if (mb_strlen($_POST['brand_name']) < 3) {
        $isPass = false;
        $output['error'] = '請輸入完整品牌名稱';
    }
    if (mb_strlen($_POST['price']) < 2) {
        $isPass = false;
        $output['error'] = '請輸入商品價格';
    }

    if ($isPass) {
        $sql = "UPDATE `commodity` SET 
          `name`=?,
          `brand_name`=?,
          `price`=?,
          `type`=?,
          `species`=? 
        WHERE `commodity_id`=?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            $_POST['name'],
            $_POST['brand_name'],
            $_POST['price'],
            $_POST['type'],
            $_POST['species'],
            $_POST['commodity_id']
        ]);

        $output['success'] = boolval($stmt->rowCount());
    }
}



echo json_encode($output, JSON_UNESCAPED_UNICODE);
