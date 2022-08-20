<?php 
    require_once "../crud/crudNovedad.php";
    $obj=new CrudNovedad();
    $datos=$obj->mostrarDatosNovedad();

    $tabla='<table class="table-responsive-sm table-light" id="tablaNovedad">
    <thead>
        <tr class="font-weight-bold">
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
    echo $tabla.$datosTabla.'</tbody></table>';
?>
<script>
    var tabla=document.querySelector("#tablaNovedad");

    var dataTable=new DataTable(tabla,{
        labels: {
    placeholder: "Buscar:",
    perPage: "{select} Registros por pagina",
    noRows: "Registro no Encontrado",
    info: "Mostrando registros del {start} al {end} de {rows} Registros"}
    });
        
</script>