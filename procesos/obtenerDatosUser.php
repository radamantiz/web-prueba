<?php 
	require '../crud/Conexion.php';

	session_start();
    $usuario = $_SESSION['username'];
    $rol = $_SESSION['rol'];

    $q = "SELECT * FROM usuario where idUsuario = '$usuario' and activo = 1";
	$consulta = mysqli_query($conexion1, $q);
	$array = mysqli_fetch_array($consulta);
	$_SESSION['userData'] = $array;

	if ($array['idUsuario']>0) {
		if ($_SESSION['rol'] == "admin") {
			header("location: ../html/editarAdmin.php");
		} else {
			header("location: ../html/editar.php");
		}
	} else {
		if ($_SESSION['rol'] == "admin") {
			header("location: ../inventario.html");
		} else {
			header("location: ../html/reservas.html");
		}
	}


?>