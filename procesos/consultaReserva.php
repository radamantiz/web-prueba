<?php 
    require_once "../crud/crudReserva.php";
    $obj=new CrudReserva();
    $datos=$obj->mostrarDatosReserva();

    $tabla='<table>
    <thead>
        <tr>
            <td>ID</td>
            <td>Solicitante</td>
            <td>Fecha</td>
            <td>Horario</td>
            <td>Ambiente</td>
            <td>Asistentes</td>
            <td>Uso</td>
        </tr>
    </thead>
    <tbody>';
    $datosTabla="";
    foreach ($datos as $key => $value) {
        $datosTabla=$datosTabla.'<tr>
                                <td>'.$value['idReserva'].'</td>
                                <td>'.$value['primerNombre'].' '.$value['segundoNombre'].' '.$value['primerApellido'].' '.$value['segundoApellido'].'</td>
                                <td>'.$value['fecha'].'</td>
                                <td>'.$value['horaInicio'].' - '.$value['horaFin'].'</td>
                                <td>'.$value['idAmbiente'].' - '.$value['nombre'].'</td>
                                <td>'.$value['asistentes'].'</td>
                                <td>'.$value['uso'].'</td>
                            </tr>'; 
    }
    $nombre ='historial de solicitudes HUB ';

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