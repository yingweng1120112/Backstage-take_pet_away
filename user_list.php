<?php
session_start();

if (isset($_SESSION["user"])) {
  include __DIR__ . '/user_login_list.php';
} else {
  include __DIR__ . '/user_nologin_list.php';
}
