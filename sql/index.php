<html>
<head><title><Welcome to my blog></title></head>
<body>
<h1><Welcome to my blog</h1>
<img src='https://storage.googleapis.com/bucket-uip/blog.jpg'>
<?php
$dbserver="34.72.180.187"
$dbuser="blogdbuser"
$dbpassword="password"
$conn = new mysqli($dbserver, $dbuser ,$dbpassword)
if(mysqli_connect_error()) {
    echo("Database connection failed: ".mysqli_connect_error());
}else{
    echo("Database connection succeeded.");
}
?>
</body></html>