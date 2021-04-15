<?php
$dbhost = "139.9.105.19:13307";
$db_user = "hynial";
$db_password = "hynial";
$db_name = "demo";
$db = new mysqli($dbhost, $db_user, $db_password, $db_name);
if($db->connect_errno > 0) {
	die('Unable to connect to database [' . $db->connect_error . ']');
}
?>