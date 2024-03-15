<pre><?php

$a = 10;

$b = &$a; //設定位址

$b =99;

echo"\$a:$a, \$b: $b <br>";

$ar1 = [
  'name' => 'David',
  'age' => 20,
];
$ar2 = $ar1; //複製一份新的,再設定  //若改成 &$ar1 兩陣列會相同
$ar1['name'] = 'John';

print_r($ar1);
print_r($ar2);
?></pre>