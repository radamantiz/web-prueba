<?php
include('../crud/Conexion.php');

//Generando clave aleatoria
$logitudPass = 8;
$miPassword  = substr( md5(microtime()), 1, $logitudPass);
$clave       = $miPassword;

$correo             = trim($_REQUEST['email']); //Quitamos algun espacion en blanco
$consulta           = ("SELECT * FROM usuario WHERE correo ='".$correo."' and activo = 1;");
$queryconsulta      = mysqli_query($conexion1, $consulta);
$cantidadConsulta   = mysqli_num_rows($queryconsulta);
$dataConsulta       = mysqli_fetch_array($queryconsulta);

if($cantidadConsulta ==0){ 
    header("Location:../html/recuperar.php?errorEmail=1");
    exit();
}else{
$updateClave    = ("UPDATE usuario SET contraseña='$clave' WHERE correo='".$correo."' ");
$queryResult    = mysqli_query($conexion1,$updateClave); 

$destinatario = $correo; 
$asunto       = "Restauración de contraseña - HUB INNOVACIÓN";
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
        width: 80%;
        min-height:auto;
        text-align: center;
        margin: 0 auto;
        background: #ececec;
        border-top: 3px solid #ed7d31;
    }
    .misection{
        color: #868787;
        margin: 4% 10% 2%;
        text-align: center;
        font-family: sans-serif;
    }
    .misection1{
        color: #ffffff;
        margin: 4% 10% 2% 10%;
        text-align: center;
        font-family: sans-serif;
    }
    </style>
</head>
<body>
    <div class="contenedor">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <table style="max-width: 600px; padding: 10px; margin:0 auto; border-collapse: collapse;">
            <tr>
                <td style="background-color: #ed7d31">
                    <img style="max-width: 600px;" src="../img/logohubblanco.png">
                </td>
            </tr>
            <tr>
                <td style="background-color: #ffffff;">
                    <div class="misection">
                        <h2 style="color: #ed7d31; margin: 0 0 7px">Hola, '.$dataConsulta["primerNombre"].' '.$dataConsulta["primerApellido"].'</h2>
                        <p style="margin: 2px; font-size: 18px">te hemos creado una nueva clave temporal para que puedas iniciar sesión, la clave temporal es: <strong>'.$clave.'</strong> </p>
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
    $headers .= "Reply-To: "; 
    $headers .= "Return-path:"; 
    $headers .= "Cc:"; 
    $headers .= "Bcc:"; 
    mail($destinatario,$asunto,$cuerpo,$headers);

    header("Location:../html/login.php?email=1");
    exit();
}

?>