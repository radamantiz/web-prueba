<?php 
    require_once "../crud/crudAmbiente.php";
    $obj=new CrudAmbiente();
    $datos=$obj->mostrarDatos();

    $tabla='<table>
    <thead>
        <tr>
            <td>ID</td>
            <td>Nombre</td>
            <td>Aforo</td>
            <td>Ubicacion</td>
        </tr>
    </thead>
    <tbody>';
    $datosTabla="";
    foreach ($datos as $key => $value) {
        $datosTabla=$datosTabla.'<tr>
                                <td>'.$value['idAmbiente'].'</td>
                                <td>'.$value['nombre'].'</td>
                                <td>'.$value['aforo'].'</td>
                                <td>'.$value['ubicacion'].'</td>
                            </tr>'; 
    }
    $nombre ='ambientes HUB ';

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