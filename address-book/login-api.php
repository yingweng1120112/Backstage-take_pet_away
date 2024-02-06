<?php
require __DIR__ . '/parts/pdo-connect.php';
header("Content-Type: application/json");
//Content-Type : 不能有空格  要一模一樣

//回應給用戶端的欄位(格式都是JSON)
$output = [
  'success' => false,
  'postData' => $_POST, //除錯用
  'error'  => '欄位資料不足',
  'code' => 0, //除錯或追蹤程式碼
];

//兩個欄位都要有值
if (!empty($_POST['email']) and !empty($_POST['password']) ) {
  
  //確認帳號是否正確  email要是唯一鍵(到php myadmin看)
  $sql = "SELECT * FROM members WHERE email=?";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([
    $_POST['email']
  ]);
  //select 才需要用fetch讀取
  $row = $stmt->fetch();

  if(!empty($row)) {
    //帳號是對的
    if(password_verify($_POST['password'], $row['password'])) {
      //密碼是對的
    $_SESSION['admin'] = [
      'id'=> $row['id'],
      'email'=> $row['email'],
      'nickname'=> $row['nickname'],
    ];
    $output['success']=true;
    $output['error']='';
    $output['code']= 200;
    }else{
      //密碼是錯的
      $output['code'] = 420;
    }
  }else{
    //帳號是錯的
    $output['code'] = 400;

  }
  //成功登入後到sess.php看
    
}


echo json_encode($output, JSON_UNESCAPED_UNICODE);
