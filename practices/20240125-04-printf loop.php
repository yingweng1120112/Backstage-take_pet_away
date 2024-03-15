<?php


//%代表一個洞 共3個洞 s視為字串  後面字串依序填入
printf("%s123%s456%s", "-", 77, "..."); # 會輸出
echo "<br>";
echo sprintf("%s123%s456%s", "-", 88, "..."); # 回傳字串
//https://www.php.net/manual/zh/function.printf.php 有每個字母解釋