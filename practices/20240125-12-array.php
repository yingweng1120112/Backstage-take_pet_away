<pre> <?php


$ar4 = [
  "Hello", //不用特別給key 可以混用字串 呈現[0]
  'name' => 'Shinder', 
  'age' => 35,
  '台南' //呈現[1] 但無法用迴圈
];
print_r($ar4); //若用echo 會提示要轉成字串(因為echo是輸出字串)
echo $ar4['name']; //所以要用中括號[]表示
echo '<br>';

echo count($ar4); //算陣列幾個key 但意義不大

?></pre>