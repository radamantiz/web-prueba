<?php 
	require '../crud/Conexion.php';
	session_start();

	$correo = $_POST['correo'];
	$contraseña = $_POST['contraseña'];

	$q = "SELECT COUNT(*) as contar, FK_rol, idUsuario FROM usuario where correo = '$correo' and contraseña = '$contraseña' and activo = 1";
	$consulta = mysqli_query($conexion1, $q);
	$array = mysqli_fetch_array($consulta);

	if ($array['contar']>0) {

		$_SESSION['username'] = $array['idUsuario'];
		
		if ($array['FK_rol'] == 1) {
			$_SESSION['rol'] = "admin";
			header("location: ../inventario.html");
			exit();
		} else {
			$_SESSION['rol'] = "user";
			header("location: ../html/reservas.html");
			exit();
		}
	} else {
		header("location: ../html/login.html?emaiIncorrecto=1");
	}
?>
