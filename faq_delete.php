<?php
//connect database
$conn = new PDO("mysql:host=localhost:3306;dbname=take_pet_away", "root", "");

// check if FAQ existed
$sql = "SELECT * FROM faq_shopinfo WHERE question_id =?";
$statement = $conn->prepare($sql);
$statement->execute([
    $_REQUEST["id"]
]);

$faq = $statement->fetch();

if (!$faq) {
    die("FAQ not found");
}
// delete from database
$sql = "DELETE FROM faq_shopinfo WHERE question_id = ?";
$statement = $conn->prepare($sql);
$statement->execute([
    $_POST["id"]
]);

// redirect to previous page
header("Location: " . $_SERVER["HTTP_REFERER"]);
