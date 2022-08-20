<?php 
	require '../crud/Conexion.php';

	session_start();
    $usuario = $_SESSION['username'];
    $rol = $_SESSION['rol'];

    $contraseña = $_POST['contraseña'];
    $contraseña2 = $_POST['contraseña2'];

	if ($contraseña == $contraseña2) {
		$updateClave    = ("UPDATE usuario SET contraseña='$contraseña' WHERE idUsuario='$usuario'");
		$queryResult    = mysqli_query($conexion1,$updateClave);
		if ($queryResult) {
			echo "<script>alert('contraseña cambiada correctamente');
			location.href='../html/reservas.php';</script>";
		} else {
			echo "<script>alert('Hubo un error, inténtelo nuevamente más tarde');
			location.href='../html/editar.php';</script>";
		}
	} else {
		echo "<script>alert('Las contraseñas no coinciden, inténtelo nuevamente');
		location.href='../html/editar.php';</script>";
	}
?>