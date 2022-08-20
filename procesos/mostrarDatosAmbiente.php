<?php 
    require_once "../crud/crudAmbiente.php";
    $obj=new CrudAmbiente();
    $datos=$obj->mostrarDatos();

    $tabla='<table class="table-responsive-sm table-light" id="tablaAmbiente">
    <thead>
        <tr class="font-weight-bold">
            <td>ID</td>
            <td>Nombre</td>
            <td>Aforo</td>
            <td>Ubicación</td>
            <td>Editar</td>
            <td>Eliminar</td>
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
                                <td style="text-align: center;">
                                    <span class="btn btn-warning btn-sm" onclick="obtenerDatos('.$value['idAmbiente'].')" data-toggle="modal" data-target="#actualizarModal">
                                        <i class="fas fa-edit"></i>
                                    </span>
                                </td>
                                <td style="text-align: center;">
                                    <span class="btn btn-danger btn-sm" onclick="eliminarDatos('.$value['idAmbiente'].')">
                                        <li class="fas fa-trash-alt"></li>
                                    </span>
                                </td>
                            </tr>'; 
    }
    echo $tabla.$datosTabla.'</tbody></table>';
?>
<script>
    var tabla=document.querySelector("#tablaAmbiente");

    var dataTable=new DataTable(tabla,{
        labels: {
    placeholder: "Buscar:",
    perPage: "{select} Registros por pagina",
    noRows: "Registro no Encontrado",
    info: "Mostrando registros del {start} al {end} de {rows} Registros"}
    });
        
</script>
