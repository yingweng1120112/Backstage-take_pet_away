<?php
require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/parts/pdo-connect.php';
header("Content-Type: application/json");
//Content-Type : 不能有空格  要一模一樣

//回應給用戶端的欄位(格式都是JSON)
$output = [
  'success' => false,
  'postData' => $_POST, //除錯用
  'error'  => '',
  'code' => 0, //除錯或追蹤程式碼
];

//有無表單送過來 若表單不是空的就處理
if (!empty($_POST['name'])) {
  $isPass = true;


  //TODO:檢查後端資料的格式
  if (mb_strlen($_POST['name']) < 3) {
    $isPass = false;
    $output['error'] = '姓名請填三個字以上';
  }

  //檢查email格式
  //可參考https://www.w3schools.com/php/php_form_url_email.asp
  if(!empty($_POST['email']) and ! filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
    $isPass = false;
    $output['error'] = 'Email 請符合格式';
  }
//生日可填可不填 不填預設空值
  $birthday = null;
  if(!empty($_POST['birthday'])){
    $t = strtotime($_POST['birthday']); //取得timestamp
    if($t !== false){
      $birthday = date('Y-m-d',$t);
    }
  }


//蔡玗珊
  if ($isPass) {
    // https://www.php.net/manual/en/pdo.prepare.php
    //避免漏洞 https://zh.wikipedia.org/wiki/SQL%E6%B3%A8%E5%85%A5
    $sql = "INSERT INTO `address_book`(
    `name`, `email`, `mobile`, 
    `birthday`, `address`, `created_at`
  ) VALUES (
    ?,?,?,
    ?,?, NOW() 
    -- ?代表占位置的符號 每個洞有對應的欄位
  )";
    $stmt = $pdo->prepare($sql);
    //開始執行
    //匯出後可以看到跳脫字元 e.g Shan'dog > 'Shan\'dog'
    $stmt->execute([
      $_POST['name'],
      $_POST['email'],
      $_POST['mobile'],
      $birthday,
      $_POST['address'],
    ]);

    /* 此作法可能有漏洞sql injection 
    //直接把值新增在sql裡
    $sql = "INSERT INTO `address_book`(
      `name`, `email`, `mobile`, 
      `birthday`, `address`, `created_at`
      ) VALUES (
        
        '{$_POST['name']}', 
        '{$_POST['email']}',
        '{$_POST['mobile']}',
        '{$_POST['birthday']}',
        '{$_POST['address']}',
        NOW()
        )";
        $stmt = $pdo->query($sql);
        */


    //常打錯字可安裝 code spell checker


    $output['success'] = boolval($stmt->rowCount());
    //轉化為布林值 rowCount新增資料列數
    //https://www.php.net/manual/en/class.pdostatement.php
  }
}


echo json_encode($output, JSON_UNESCAPED_UNICODE);
