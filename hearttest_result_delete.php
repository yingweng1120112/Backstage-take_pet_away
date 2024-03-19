<?php
// require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/parts/pdo-connect.php';

$personalityType = isset($_GET["personality_type"]) ? $_GET["personality_type"] : '';

if(!empty($personalityType)){
  $sql = "DELETE FROM psycological_test_result WHERE personality_type = ?";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([$personalityType]);
}

$backTo = 'hearttest_result.php';
if(!empty($_SERVER['HTTP_REFERER'])){
  $backTo = $_SERVER['HTTP_REFERER'];
}

header("Location: $backTo");
?>
