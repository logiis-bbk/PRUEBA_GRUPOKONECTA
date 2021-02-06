<?php
$servername="localhost";
$username="username";
$password="password";
$dbname="blog"

//crear la conexion
$conn=mysqli_connect($servername,$username,$password);
 // checkear la conexion
 if(!$conn){
     die("conexion fallo: " .mysqli_connect_error());
 }
 echo"Conexion exitosa";
 ?>
