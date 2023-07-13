<?php

$url = $_SERVER['REQUEST_URI'];

header('location: ' . $url . 'Admin/isi/login.php');

exit();
