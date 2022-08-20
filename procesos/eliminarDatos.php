<?php 
    require_once "../crud/crud.php";
    $idEquipo = $_POST['idEquipo'];

	$registro=new Crud;
    echo $registro->eliminarDatos($idEquipo);      
?>
