<pre><?php

$ar4 = [
  "Hello", 
  'name' => 'Shinder', 
  'age' => 35,
  '台南' 
];

//同js for/if迴圈  用=>是關聯式陣列
foreach($ar4 as $k => $v){  //k是 key v是 value 變數名稱可以自己決定
  echo" $k: $v <br>";
} 
//呼叫時傳的是number string boolean 即是傳值，其他都是傳遞參照呼叫(reference) js由上面判斷類型 但無法自行決定設定參照或值
//php可以決定設定值或參照(位址)
?></pre>