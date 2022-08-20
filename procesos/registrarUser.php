<?php 
	require '../crud/Conexion.php';

	$tipoDocumento = $_POST['tipDocu'];
	$numeroDocumento = $_POST['numDocu'];
	$primerNombre = $_POST['nombreUser'];
	$segundoNombre = $_POST['nombreUser2'];
	$primerApellido = $_POST['apellidoUser'];
	$segundoApellido = $_POST['apellidoUser2'];
	$contraseña = $_POST['contraseña'];
	$correo = $_POST['correo'];
	$contraseña2 = $_POST['contraseñaConfirm'];
	$correo2 = $_POST['correoConfirm'];
	$telefono = $_POST['telefono'];
	$activo = 1;
	$FK_rol = 2;


	$q1 = "SELECT COUNT(*) as contar, correo, numeroDocumento FROM usuario where correo = '$correo' or numeroDocumento = '$numeroDocumento' and activo = 1";
	$consulta = mysqli_query($conexion1, $q1);
	$array = mysqli_fetch_array($consulta);

	if ($array['contar']<1) {

		if ($correo == $correo2) {
			if ($contraseña == $contraseña2) {
				$q = "INSERT INTO usuario (tipoDocumento, numeroDocumento, primerNombre, segundoNombre, primerApellido, segundoApellido, contraseña, correo, telefono, activo, FK_rol) VALUES ('$tipoDocumento', '$numeroDocumento', '$primerNombre', '$segundoNombre', '$primerApellido', '$segundoApellido', '$contraseña', '$correo', '$telefono', '$activo', '$FK_rol');";
				$query = mysqli_query($conexion1, $q);

				if ($query) {
					echo "<script>alert('Usuario registrado correctamente');
					location.href='../html/login.php';</script>";
				} else {
					header("location: ../html/registro.php?errorRegistro=1");
				}
			} else {
				header("location: ../html/registro.php?errorContraseñaConfirm=1");
			}
			
		} else {
			header("location: ../html/registro.php?errorCorreoConfirm=1");
		}

	} else {
		header("location: ../html/registro.php?userExistente=1");
	}
	
?>