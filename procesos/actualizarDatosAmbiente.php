<?php 
    require_once "../crud/crudAmbiente.php";
    $datos=array(
            'nombre'=>$_POST['nombreu'],
            'aforo'=>$_POST['aforou'],
            'ubicacion'=>$_POST['ubicacionu'],
            'idAmbiente'=>$_POST['idAmbienteu']
            );
    $registro=new CrudAmbiente;
    echo $registro->actualizarDatos($datos);     
?>