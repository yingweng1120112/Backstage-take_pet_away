<?php
require __DIR__ . '/parts/pdo-connect.php';
header('Content-Type: application/json');

$output = [
    'success' => false,
    'postDate' => $_POST,
    'error' => '',
    'code' => 0,
];

if (!empty($_POST['name'])) {
    $sql = "INSERT INTO `commodity`(`name`, `brand_name`, `price`, `type`, `species`
        ) VALUES (
            ?, ?, ?, ?, ?
        )";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        $_POST['name'],
        $_POST['brand_name'],
        $_POST['price'],
        $_POST['type'],
        $_POST['species']
    ]);

    $output['success'] = boolval($stmt->rowCount());
}



echo json_encode($output, JSON_UNESCAPED_UNICODE);
