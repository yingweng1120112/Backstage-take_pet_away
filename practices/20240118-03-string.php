<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <div>
    <?php
    $name = 'shan';
    echo "Hello $name <br>";
    //雙引號 輸出變數的值
    echo 'Hello $name <br>';
    //單引號 裡面是什麼內容 就呈現什麼
    echo "\$name : $name<br>";
    // 放\ 代表跳脫字元(指令) 可呈現$字號
    echo "{$name}123<br>";
    //用{}分隔跟後面的數字123 不然會視為同一指令(當然用空白隔開也可以)

    //單引號功能:跳脫單引號'' 跳脫倒斜線\ (不用特別用倒斜線\)
    //
    

    ?>
  </div>
</body>
</html>