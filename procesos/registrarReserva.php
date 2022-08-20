<?php 
	require '../crud/Conexion.php';

	session_start();
    $usuario = $_SESSION['username'];
    $rol = $_SESSION['rol'];

    if(!isset($usuario)){
        header("location: login.php");
    }else{
        if($rol!="user"){
            header("location: ../inventario.php");
        }   
    }

	$FK_ambiente = $_POST['idAmbiente'];
	$FK_solicitante = $usuario;
	$fecha = $_POST['fecha'];
	$horaInicio = (string) date("H:i", strtotime($_POST['horaInicio']));
	$horaFin = date("H:i", strtotime($_POST['horaFin']));
	$asistentes = $_POST['asistentes'];
	$uso = $_POST['uso'];
	$activo = 1;

	$q1 = "SELECT * FROM usuario where idUsuario = '$FK_solicitante' and activo = 1";
	$consulta = mysqli_query($conexion1, $q1);
	$array = mysqli_fetch_array($consulta);

	$correo = $array['correo'];
	$correo2 = 'equinteroc@sena.edu.co';

	$q = "INSERT INTO reserva (FK_ambiente, FK_solicitante, fecha, horaInicio, horaFin, asistentes, uso, activo) VALUES ('$FK_ambiente', '$FK_solicitante', '$fecha', '$horaInicio', '$horaFin', '$asistentes', '$uso', '$activo');";
	$query = mysqli_query($conexion1, $q);
	$idReserva = mysqli_insert_id($conexion1);

	if ($query) {
			$q2 = "SELECT * FROM ambiente where idAmbiente = '$FK_ambiente' and activo = 1";
			$consulta1 = mysqli_query($conexion1, $q2);
			$array2 = mysqli_fetch_array($consulta1);
			$destinatario = $correo.', '.$correo2; 
			$asunto       = "Solicitud de reserva - HUB INNOVACIÓN";
			$cuerpo = '<!DOCTYPE html>
						    <html lang="es">
						    <head>
						    <title>Recuperar Clave de Usuario</title>
						<style>
						    * {
						        margin: 0;
						        padding: 0;
						        box-sizing: border-box;
						    }
						    body {
						        font-family: "Roboto", sans-serif;
						        font-size: 16px;
						        font-weight: 300;
						        color: #ed7d31;
						        background-color:rgba(230, 225, 225, 0.5);
						        line-height: 30px;
						        text-align: center;
						    }
						    .contenedor{
						        width: 100%;
						        min-height:auto;
						        text-align: center;
						        margin: 0 auto;
						        background: #ececec;
						        border-top: 3px solid #ed7d31;
						    }
						    .misection{
						        color: #868787;
						        margin: 4% auto 2%;
						        font-family: sans-serif;
						        text-align: initial;
						        padding: 0 5%;
						    }
						    .misection1{
						        color: #ffffff;
						        margin: 0;
						        text-align: center;
						        font-family: sans-serif;
						    }
						    </style>
						</head>
						<body>
						    <div class="contenedor">
						        <p>&nbsp;</p>
						        <p>&nbsp;</p>
						        <table style="padding: 10px; margin: 0 auto; border-collapse: collapse;">
						            <tr>
						                <td style="background-color: #ed7d31; width: 100%;">
						                    <img style="max-width: 700px; width: 80%" src="../img/logohubblanco.png">
						                </td>
						            </tr>
						            <tr>
						                <td style="background-color: #ffffff;">
						                    <div class="misection">
						                        <h2 style="text-align: center; color: #ed7d31; margin: 0 0 7px">SOLICITUD DE RESERVA - '.$idReserva.'</h2>
						                        <p style="margin: 2px; font-size: 20px">Solicitante: '.$array['tipoDocumento'].' - '.$array['numeroDocumento'].'</p>
						                        <p style="margin: 2px; font-size: 20px">Nombre: '.$array['primerNombre'].' '.$array['segundoNombre'].' '.$array['primerApellido'].' '.$array['segundoApellido'].'</p>
						                        <p style="margin: 2px; font-size: 20px">Contacto: '.$array['telefono'].' - '.$array['correo'].'</p>
						                        <p>&nbsp;</p>
						                        <p style="margin: 2px; font-size: 20px">Ambiente: '.$array2['nombre'].' - '.$array2['ubicacion'].'</p>
						                        <p style="margin: 2px; font-size: 20px">Fecha: '.$fecha.'</p>
						                        <p style="margin: 2px; font-size: 20px">Horario: '.$horaInicio.' - '.$horaFin.'</p>
						                        <p style="margin: 2px; font-size: 20px">Asistentes: '.$asistentes.'</p>
						                        <p style="margin: 2px; font-size: 20px">Uso: '.$uso.'</p>
						                        <p>&nbsp;</p>
						                    </div>
						                </td>
						            </tr>
						            <tr>
						                <td style="background-color: #ed7d31;">
						                    <div class="misection1">
						                        <p>&nbsp;</p>
						                        <p style="margin: 2px; font-size: 17px"><strong>Hub de innovación SENA - Distrito Capital. </strong> </p>
						                        <p>&nbsp;</p>
						                    </div>
						                </td>
						            </tr>
						        </table>
						    </div>
						</body>
						</html>
						';
			    
			    $headers  = "MIME-Version: 1.0\r\n"; 
			    $headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
			    $headers .= "From: HUB INNOVACIÓN SENA - Distrito Capital\r\n"; 
			    mail($destinatario,$asunto,$cuerpo,$headers);
			    
			    echo "<script>alert('Solicitud registrada correctamente, revise su correo');
				location.href='../html/reservas.php';</script>";
			    exit();
	} else {
		echo "<script>alert('Error al registrar solicitud,inténtelo nuevamente');
		location.href='../html/formreserva.php';</script>";
	}
?>