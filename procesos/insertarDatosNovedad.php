<?php 
    require_once "../crud/crudNovedad.php";
    $datos=array(
            'FK_usuario'=>$_POST['FK_usuarion'],
            'FK_equipo'=>$_POST['idEquipou'],
            'tipo'=>$_POST['tipon'],
            'descripcion'=>$_POST['descripcionn'],
            'fecha' =>$_POST['fechan']
            );
    $registro=new CrudNovedad;
    echo $registro->registrarNovedad($datos);
?>

