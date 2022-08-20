<?php 

	require_once "../crud/crudAmbiente.php";

	$obj = new crudAmbiente();

	echo json_encode($obj->obtenerDatos($_POST['idAmbiente']));


 ?>