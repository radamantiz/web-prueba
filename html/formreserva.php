<?php 

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

    $idAmbiente = $_GET['idAmbiente']
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/formreserva.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/400dbe3ce8.js" crossorigin="anonymous"></script>
    <script defer src="../js/script.js"></script>
    <title>Reservas - Inicio</title>
    <link rel="shortcut icon" href="../img/Logo-de-SENA-sin-fondo-naranja-300x300.png" />
</head>
<body>

    <header class="header-top">
        <div class="container-header">
            <div class="header-main">
                <div class="logo">
                    <img src="../img/logohubblanco.png" alt="">
                </div>
                <div class="open-nav-menu">
                    <span></span>
                </div>
                <div class="menu-overlay">

                </div>
                    <nav class="nav-menu">
                        <div class="close-nav-menu">
                            <img src="../img/svg/x-solid.svg" alt="">
                        </div>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="../procesos/obtenerDatosUser.php">Editar perfil</a>
                            </li>
                            <li class="menu-item  menu-item-active">
                                <a href="reservas.php">Reserva</a>
                            </li>
                            <li class="menu-item">
                                <a href="../procesos/salir.php">Cerrar sesión</a>
                            </li>
                        </ul>
                    </nav>
            </div>
        </div> 
    </header>

    <div class="form-container">
        <div class="title">Solicitud de ambiente</div>
    
        <form action="../procesos/registrarReserva.php" method="POST">
        <div class="user-details">
            <div class="input-box">
                <span class="details"> Fecha </span>
                <input type="date" name="fecha" id="start" value="<?= date('Y-m-d'); ?>" min="<?= date('Y-m-d'); ?>" required>
            </div>
            <div class="input-box">
                <span class="details"> Hora de inicio</span>
                <input name="horaInicio" type="time" required>
            </div>
            <div class="input-box">
                <span class="details"> Hora de finalización </span>
                <input name="horaFin" type="time" required>
            </div>
            <div class="input-box">
                <span class="details"> No. Asistentes </span>
                <input name="asistentes" type="number" required>
            </div>
                <div class="input-box">
                    <span class="details">Uso</span>
                    <textarea name="uso" style="width: 100%;" rows="5"></textarea>
                </div>
                <input type="hidden" name="idAmbiente" value="<?php echo $idAmbiente?>">
                <div class="button">
                    <input type="submit" value="Solicitar">
                    <a href="2.html">Volver</a>
                </div>
            </div>
        </form>
    </div>
<!--footer-->
<footer class="footer">
        <div class="group-1">
            <div class="box">
                <div>
                    <a href="#">
                        <img src="../img/logohubblanco.png" alt="logo HUB de innovación 4.0">
                    </a>
                </div>
            </div>
            <div class="box">
                <h2>CONTACTO</h2>
                     <p>Teléfono: 546 16 00 </p>                     
                     <p>Correo: equinteroc@sena.edu.co</p>
            </div>
            <div class="box">
                <h2>UBICACIÓN</h2>
                  <p>Carrera 13 # 65-10 Bogotá, Colombia.</p>
                 <p>SENA - Centro De Servicios Financieros</p> 
                 <p>Pisos 1, 5 y 13</p> 
            </div>
        </div>
        <div class="group-2">
            <small>&copy; 2022 <b>HUB de innovación 4.0 Regional distrito capital -Todos los Derechos Reservados. </b> </small>
        </div>
    </footer>
</body>
</html>