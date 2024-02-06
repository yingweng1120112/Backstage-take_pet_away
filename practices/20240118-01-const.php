<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>
    <?php
    define('MY_NAME','Shan'); //通常加在最前面
    echo 12 + 34;  //輸出到頁面(php的+ 只做數值相加)
    echo'<br>';
    // . 是做字串的串接(js是+)
    echo __DIR__.'<br>'; //目前php檔所在磁碟路徑資料夾
    echo __FILE__.'<br>'; //php檔的磁碟路徑(包含檔名)
    echo __LINE__.'<br>'; //目前所在行數
    echo MY_NAME;
    ?>
    </h2>
</body>
</html>