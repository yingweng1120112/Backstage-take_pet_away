<?php

$str = '{"name":"Shin","age":22}';

$ar = json_decode($str,true); 
//# JSON 轉換為 php 陣列
//json_decode無法解析時會拿到空值

$obj = json_decode($str);
//JSON 轉換為 php 物件
header('Content-Type:text/plain');
var_dump($ar);
var_dump($obj);
echo "\n";

echo $obj->name;

//php的-> 等同js的. (某物件的屬性)