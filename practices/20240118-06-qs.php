<?php
// php會把 query sring parameters 解析完放到$_GET
//echo $_GET['aa']; //['aa']在php是陣列
//http://127.0.0.1/mfee50-php/practices/20240118-05-qs.php?a=100
//會出現100
//輸入 b=100 不行 因為沒有key

$a = isset($_GET['a']) ? intval( $_GET['a']) : 0; //isset判斷陣列中某一元素是否有設定值 intval轉換成整數(無法轉換會是0)


echo $a;
