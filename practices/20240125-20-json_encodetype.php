<?php

$ar1 = [
  'name' => '小新',
  'age' => 25,
  'data' => 'abc/def',
];

//告訴用戶端 此文字為 json
//轉換為json字串
header('Content-Type:application/json');
echo json_encode($ar1, JSON_UNESCAPED_UNICODE); //(,表示不要跳脫文字)
//安裝google擴充 json viewer
