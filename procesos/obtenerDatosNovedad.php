 <?php 

	require_once "../crud/crudNovedad.php";

	$obj1 = new CrudNovedad();

	echo json_encode($obj1->obtenerDatos($_POST['idEquipo']));


 ?> 