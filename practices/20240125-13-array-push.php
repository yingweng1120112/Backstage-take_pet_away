<pre> <?php

for($i = 1; $i <42; $i++){
  $ar[] = $i; //數字加入陣列
}

echo implode("," , $ar); //把陣列接起來串成字串
// explode() 是切割字串成陣列
echo "\n"; //換行

shuffle($ar); //亂數排序
echo implode("," , $ar); 
echo "\n";

?></pre>