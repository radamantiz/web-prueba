<?php 
    require_once "../crud/crudAmbiente.php";
    $idAmbiente = $_POST['idAmbiente'];

	$registro=new CrudAmbiente;
    echo $registro->eliminarDatos($idAmbiente);      
?>