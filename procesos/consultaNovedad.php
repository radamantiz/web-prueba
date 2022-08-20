<?php 
    require_once "../crud/crudNovedad.php";
    $obj=new CrudNovedad();
    $datos=$obj->mostrarDatosNovedad();

    $tabla='<table>
    <thead>
        <tr>
            <td>Codigo</td>
            <td>Nombre</td>
            <td>Fecha</td>
            <td>Tipo</td>
            <td>Descripción</td>
        </tr>
    </thead>
    <tbody>';
    $datosTabla="";
    foreach ($datos as $key => $value) {
        $datosTabla=$datosTabla.'<tr>
                                <td>'.$value['codigo'].'</td>
                                <td>'.$value['nombre'].'</td>
                                <td>'.$value['fecha'].'</td>
                                <td>'.$value['tipo'].'</td>
                                <td>'.$value['descripcion'].'</td>
                            </tr>'; 
    }
    $nombre ='novedades HUB ';

            header('Expires: 0');
            header('Cache-control: private');
            header("Content-type: application/vnd.ms-excel;charset=iso-8859-15"); // Archivo de Excel
            header("Cache-Control: cache, must-revalidate"); 
            header('Content-Description: File Transfer');
            header('Last-Modified: '.date('D, d M Y H:i:s'));
            header("Pragma: public"); 
            header('Content-Disposition:attachment; filename="'.$nombre.date('Y-m-d').'.xls"');
            header("Content-Transfer-Encoding: binary");

    echo $tabla.$datosTabla.'</tbody></table>';
?>