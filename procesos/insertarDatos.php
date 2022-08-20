<?php 
    require_once "../crud/crud.php";
    $datos=array(
            'codigo'=>$_POST['codigo'],
            'nombre'=>$_POST['nombre'],
            'estado'=>$_POST['estado'],
            'FK_ambiente'=>$_POST['FK_ambiente']
            );
    $registro=new Crud;
    echo $registro->insertarDatos($datos);        
?>