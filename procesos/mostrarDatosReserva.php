<?php 
    require_once "../crud/crudReserva.php";
    $obj=new CrudReserva();
    $datos=$obj->mostrarDatosReserva();

    $tabla='<table class="table-responsive-sm table-light" id="tablaReserva">
    <thead>
        <tr class="font-weight-bold">
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
    echo $tabla.$datosTabla.'</tbody></table>';
?>
<script>
    var tabla=document.querySelector("#tablaReserva");

    var dataTable=new DataTable(tabla,{
        labels: {
    placeholder: "Buscar:",
    perPage: "{select} Registros por pagina",
    noRows: "Registro no Encontrado",
    info: "Mostrando registros del {start} al {end} de {rows} Registros"}
    });
        
</script>