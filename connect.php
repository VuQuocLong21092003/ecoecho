<?php
$db_host = '127.0.0.1:3366';
$db_name = 'ecoecho';
$user_name = 'root';
$user_password = '';

$conn = new mysqli($db_host, $user_name, $user_password, $db_name);


mysqli_query($conn, "SET NAMES 'utf8'");