<?php
session_start();
$nombreusuario= $_SESSION['nombre'];
$apellidousuario= $_SESSION['apellido'];
?>
<link rel="stylesheet" href="css/estilo.css"media="all">

<div class="mensaje">Bievenido <h3><?php echo "$nombreusuario.$apellidousuario" ?>
                                                        
</h3><br/><br/> <a href="cerrar.php">cerrar session</a>
</div>
