<?php

$pw = '12345';

//https://www.php.net/manual/en/function.password-hash
echo password_hash($pw, PASSWORD_DEFAULT);