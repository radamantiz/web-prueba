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
    $resultado = $_SESSION['userData'];
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/reservas.css">
    <link rel="stylesheet" href="../css/editar.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/400dbe3ce8.js" crossorigin="anonymous"></script>
    <script defer src="../js/script.js"></script>
    <title>Editar perfil</title>
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
                            <li class="menu-item  menu-item-active">
                                <a href="../procesos/obtenerDatosUser.php">Editar perfil</a>
                            </li>
                            <li class="menu-item">
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
        <form class="form__editar" action="../procesos/actualizarDatosUser.php" method="POST">
            <h2 class="form__title">Editar perfil</h2>
            <div class="form__container">
                <div class="form__group">
                    <input name="primerNombre" id="primerNombre" type="text" class="form__input" placeholder="Nombres" value="<?php echo $resultado['primerNombre']?>">
                </div>
                <div class="form__group">
                    <input name="segundoNombre" id="segundoNombre" type="text" class="form__input" placeholder="Nombres" value="<?php echo $resultado['segundoNombre']?>">
                </div>
                <div class="form__group">
                    <input name="primerApellido" id="primerApellido" type="text" class="form__input" placeholder="Apellidos" value="<?php echo $resultado['primerApellido']?>">
                </div>
                <div class="form__group">
                    <input name="segundoApellido" id="segundoApellido" type="text" class="form__input" placeholder="Apellidos" value="<?php echo $resultado['segundoApellido']?>">
                </div>
                <div class="form__group">
                    <select class="form__input2" id="tipoDocumento" name="tipoDocumento">
                        <option class="form__options" value="<?php echo $resultado['tipoDocumento']?>"><?php echo $resultado['tipoDocumento']?></option>
                        <option class="form__options" value="CC">Cédula</option>
                        <option class="form__options" value="PASAPORTE">Pasaporte</option>
                    </select>
                </div>
                <div class="form__group">
                    <input id="numeroDocumento" name="numeroDocumento" type="number" class="form__input" placeholder="Número documento" value="<?php echo $resultado['numeroDocumento']?>">
                </div>
                <div class="form__group">
                    <input id="correo" name="correo" type="email" class="form__input" placeholder="Correo" value="<?php echo $resultado['correo']?>">
                </div>
                <input type="submit" value="Guardar Cambios" class="form__submit">
            </div>
        </form>

        <form class="form__password" action="../procesos/actualizarContraseña.php" method="POST">
            <h2 class="form__title">Cambiar contraseña</h2>
            <div class="form__container">
                <div class="form__group">
                    <input id="contraseña" name="contraseña" type="password" class="form__input" placeholder="Nueva contraseña">
                </div>
                <div class="form__group">
                    <input id="contraseña2" name="contraseña2" type="password" class="form__input" placeholder="Repetir contraseña">
                </div>
                <input type="submit" value="Guardar Cambios" class="form__submit">
            </div>
        </form>
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