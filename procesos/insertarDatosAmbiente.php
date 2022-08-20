<?php 
    require_once "../crud/crudAmbiente.php";
    $datos=array(
            'nombre'=>$_POST['nombre'],
            'ubicacion'=>$_POST['ubicacionA'],
            'aforo'=>$_POST['aforo']
            );
    $registro=new CrudAmbiente;
    echo $registro->insertarDatos($datos);        
?>