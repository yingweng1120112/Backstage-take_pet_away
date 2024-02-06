<?php
session_start();
unset($_SESSION['user']);
//移除登入後資料

// session_destory(); 清除所有的session 建議用下面方法一次一筆

header('Location:20240126-06-login.php');
//後端跳轉