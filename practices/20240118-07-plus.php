<?php


//sleep(15); 暫停執行幾秒 可以測試0125-16、0125-17比較同步 非同步
$a = isset($_GET['a']) ? intval( $_GET['a']) :0;
$b = isset($_GET['b']) ? intval( $_GET['b']) :0;
//http://127.0.0.1/mfee50-php/practices/20240118-06-plus.php?a=20&b=10 不能有空格

echo $a + $b;

