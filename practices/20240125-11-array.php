<pre> <?php
// <pre> 真實呈現code內容 例如有格式化 那網頁也會格式化
$ar1 = array(2,4,6,8,10);
$ar2 = [2,4,6,8,10];
print_r($ar1); //查看陣列樣子
var_dump($ar1); //提供訊息較多 查看變數樣子

$ar3 = array(
  'name' => 'Shinder',  //分兩種箭頭(-> =>) =>跟js功能不一樣 同js的object
  'age' => 35,
);
$ar4 = [
  'name' => 'Shinder', 
  'age' => 35,
];
print_r($ar3);
print_r($ar4);

?></pre>