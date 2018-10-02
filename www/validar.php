<?php
session_start();
include_once "conexion.php";
$usu= $_POST["usuario"];
$pwd= $_POST["clave"];

$logueo= mysqli_query($con,"SELECT per.personanombres AS nombres, per.personaapellidos AS apellidos
FROM usuario usu
INNER JOIN persona per ON usu.personacodigo = per.personacodigo
WHERE usu.UsuarioLogin = '$usu'
AND usu.UsuarioPassword = '$pwd'");


if($reg=mysqli_fetch_array($logueo)){
	$_SESSION["nombre"]=$reg["nombres"];
	$_SESSION["apellido"]=$reg["apellidos"];
   echo"<script>location.href='panel.php';</script>";
}
else{
	
	echo"<script>alert('usuario o clave incorrectos')</script>";
	echo"<script>location.href='index.php';</script>";

}
 

?>
