<?php
//echo true; //true是1 false是空字串
//php的邏輯運算結果一定是布林值
$a1 = 5 && 7;
var_dump($a1); //會直接轉換成布林值
echo'<br>';

$a2 = 5 || 7;
var_dump($a2); 
echo'<br>';

$a3 = 0 && 7;
var_dump($a3); 
echo'<br>';
//bool(true) bool(true) bool(false)
$a4 = 5 and 7; //and or 優先值比 = 低 沒經過邏輯運算
var_dump($a4); 
echo'<br>';

$a5 = 5 or 7;
var_dump($a5); 
echo'<br>';

$a6 = 0 and 7;
var_dump($a6); 
echo'<br>';
//int(5) int(5) int(0)
$a7 = (5 and 7); //加()才有邏輯運算
var_dump($a7); 
echo'<br>';

$a8 = (5 or 7);
var_dump($a8); 
echo'<br>';

$a9 = (0 and 7);
var_dump($a9); 
echo'<br>';
//bool(true) bool(true) bool(false)
