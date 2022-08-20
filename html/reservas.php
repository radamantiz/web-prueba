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
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/reservas.css">
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
    
    <h1 class="title">Reservar ambiente</h1>
    <div class="container">
        <div class="card">
            <img src="../img/cabinas.jpeg" alt="">
            <h4>Cabina</h4>
            <a href="formreserva.php?idAmbiente=7">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/coworking.jpeg" alt="">
            <h4>Trabajo colaborativo</h4>
            <a href="formreserva.php?idAmbiente=3">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/coworking2.jpeg" alt="">
            <h4>Trabajo colaborativo</h4>
            <a href="formreserva.php?idAmbiente=1">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/salaColaborativa.jpeg" alt="">
            <h4>Sala colaborativa</h4>
            <a href="formreserva.php?idAmbiente=8">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/desarrollo.jpeg" alt="">
            <h4>Desarrollo digital</h4>
            <a href="formreserva.php?idAmbiente=19">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/desarrollo2.jpeg" alt="">
            <h4>Desarrollo digital</h4>
            <a href="formreserva.php?idAmbiente=18">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/Inspiración.png" alt="">
            <h4>Zona de Inspiración</h4>
            <a href="formreserva.php?idAmbiente=20">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/seguridad.jpeg" alt="">
            <h4>Seguridad y control</h4>
            <a href="formreserva.php?idAmbiente=21">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/terraza.jpg" alt="">
            <h4>Terraza</h4>
            <a href="formreserva.php?idAmbiente=22">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/worldSkills.jpeg" alt="">
            <h4>World skills</h4>
            <a href="formreserva.php?idAmbiente=23">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/banca.jpeg" alt="">
            <h4>Banca</h4>
            <a href="formreserva.php?idAmbiente=25">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/13 bpo.jpeg" alt="">
            <h4>BPO</h4>
            <a href="formreserva.php?idAmbiente=30">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/13 fiducia.jpeg" alt="">
            <h4>Fiducia</h4>
            <a href="formreserva.php?idAmbiente=26">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/13 labFinanciero.jpeg" alt="">
            <h4>Laboratorio</h4>
            <a href="formreserva.php?idAmbiente=24">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/13 opBursatil.jpeg" alt="">
            <h4>Operación bursátil</h4>
            <a href="formreserva.php?idAmbiente=29">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/13 pensiones.jpeg" alt="">
            <h4>Pensiones</h4>
            <a href="formreserva.php?idAmbiente=28">Reservar</a>
        </div>
        <div class="card">
            <img src="../img/13 seguros.jpeg" alt="">
            <h4>Seguros</h4>
            <a href="formreserva.php?idAmbiente=27">Reservar</a>
        </div>
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
