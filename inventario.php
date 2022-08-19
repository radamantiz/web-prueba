<?php

	session_start();
	$usuario = $_SESSION['username'];
	$rol = $_SESSION['rol'];

	if(!isset($usuario)){
        header("location: html/login.php");
    }else{
    	if($rol!="admin"){
	        header("location: html/reservas.php");
	    }
    }
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="librerias/bootstrap4/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" href="css/inventario.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://unpkg.com/vanilla-datatables@latest/dist/vanilla-dataTables.min.css" rel="stylesheet" type="text/css">
	<script src="https://unpkg.com/vanilla-datatables@latest/dist/vanilla-dataTables.min.js" type="text/javascript"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100&display=swap" rel="stylesheet">
	<script defer src="js/script.js"></script>
    <script src="https://kit.fontawesome.com/a32e8b867e.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="img/Logo-de-SENA-sin-fondo-naranja-300x300.png"/>
	<title>Inventario</title>
</head>
<body>
	<header class="header-top">
        <div class="container-header">
            <div class="header-main">
                <div class="logo">
                    <img src="img/logohubblanco.png" alt="">
                </div>
                <div class="open-nav-menu">
                    <span></span>
                </div>
                <div class="menu-overlay">

                </div>
                    <nav class="nav-menu">
                        <div class="close-nav-menu">
                            <img src="img/svg/x-solid.svg" alt="">
                        </div>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="procesos/obtenerDatosUser.php">Editar perfil</a>
                            </li>
                            <li class="menu-item menu-item-active">
                                <a href="inventario.php">Inventario</a>
                            </li>
                            <li class="menu-item">
                                <a href="./html/ambientes.php">Ambientes</a>
                            </li>
                            <li class="menu-item">
                                <a href="procesos/salir.php">Cerrar sesión</a>
                            </li>
                        </ul>
                    </nav>
            </div>
        </div>
    </header>
	<div style="font-size: 1.05em;" class="container font-weight-bold">
		<div class="row">
			<div class="col-sm-12">
				<div class="card text-left">
					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<div class="btn-group flex-wrap btn-group-toggle">
									<span class="btn btn-secondary" data-toggle="modal" data-target="#insertarModal">
										<i class="fas fa-plus-circle"></i> Nuevo registro
									</span>
									<a onclick="window.open(this.href,'_blank');return false;" href="./procesos/consulta.php" class="btn btn-secondary"><i class="fa-solid fa-circle-chevron-down"></i> Exportar a excel</a>
									<a href="./html/novedades.php" class="btn btn-secondary"><i class="fa-solid fa-clock-rotate-left"></i> Novedades</a>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-12">

								<div id="tablaDatos"></div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<?php require_once "modalInsert.php" ?>
	<?php require_once "modalInsertNov.php" ?>
	<?php require_once "modalUpdate.php" ?>

	<script src="librerias/bootstrap4/jquery-3.4.1.min.js"></script>
	<script src="librerias/bootstrap4/popper.min.js"></script>
	<script src="librerias/bootstrap4/bootstrap.min.js"></script>
	<script src="librerias/sweetalert.min.js"></script>
	<script src="jsc/crud.js"></script>

	<script type="text/javascript">
		mostrar();
	</script>
</body>
</html>