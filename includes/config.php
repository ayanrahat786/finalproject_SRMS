<?php 
// ini_set('display_startup_errors', 1);
// ini_set('display_errors', 1);
// error_reporting(-1);
// DB credentials.
define('DB_HOST','127.0.0.1:3306');
define('DB_USER','h2s');
define('DB_PASS','password');
define('DB_NAME','srms');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>