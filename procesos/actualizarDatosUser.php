<?php 
	require '../crud/Conexion.php';

	session_start();
    $usuario = $_SESSION['username'];
    $rol = $_SESSION['rol'];

    $tipoDocumento = $_POST['tipoDocumento'];
	$numeroDocumento = $_POST['numeroDocumento'];
	$primerNombre = $_POST['primerNombre'];
	$segundoNombre = $_POST['segundoNombre'];
	$primerApellido = $_POST['primerApellido'];
	$segundoApellido = $_POST['segundoApellido'];
	$correo = $_POST['correo'];

	$updateUser    = ("UPDATE usuario SET tipoDocumento ='$tipoDocumento', numeroDocumento ='$numeroDocumento', primerNombre = '$primerNombre', segundoNombre = '$segundoNombre', primerApellido = '$primerApellido', segundoApellido = '$segundoApellido', correo = '$correo' WHERE idUsuario='$usuario'");
	$queryResult    = mysqli_query($conexion1,$updateUser);
	if ($queryResult) {
		if ($rol == 'user') {
			echo "<script>alert('Modificaciones realizadas correctamente');
			location.href='../html/reservas.php';</script>";
		}
		if ($rol == 'admin') {
			echo "<script>alert('Modificaciones realizadas correctamente');
			location.href='../inventario.php';</script>";
		}
	} else {
		if ($rol == 'user') {
			echo "<script>alert('Hubo un error, inténtelo nuevamente más tarde');
			location.href='../html/editar.php';</script>";
		}
		if ($rol == 'admin') {
			echo "<script>alert('Hubo un error, inténtelo nuevamente más tarde');
			location.href='../html/editarAdmin.php';</script>";
		}
	}
?>