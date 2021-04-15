<?php

$pdo = new PDO('mysql:dbname=demo;host=139.9.105.19:13307', 'hynial', 'hynial', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
// $pdo = new PDO('mysql:dbname=demo;host=mysql', 'hynial', 'hynial', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

$query = $pdo->query('SHOW VARIABLES like "version"');

$row = $query->fetch();

echo 'MySQL version:' . $row['Value'];
echo '<br />';

$dbhost = "139.9.105.19:13307";
$db_user = "hynial";
$db_password = "hynial";
$db_name = "demo";
$db = new mysqli($dbhost, $db_user, $db_password, $db_name);
if($db->connect_errno > 0) {
        die('Unable to connect to database [' . $db->connect_error . ']');
}else{
  echo "yes";
}
