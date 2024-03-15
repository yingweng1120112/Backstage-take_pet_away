<?php

$hash = '$2y$10$czrmaL3a43qbM3H8U17Aqeva/QeYpN0E8XF.RfoAVFjusdXFAewkO';

$pw = '12345';

var_dump(password_verify($pw, $hash));
