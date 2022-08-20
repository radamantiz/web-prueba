function mostrar(){
	$.ajax({
		type:"POST",
		url:"../procesos/mostrarDatosAmbiente.php",
		success:function(r){
			$('#tablaDatosAmbiente').html(r);
		}
	});
}

function obtenerDatos(idAmbiente) {
	$.ajax({
		type:"POST",
		data:"idAmbiente="+idAmbiente,
		url:"../procesos/obtenerDatosAmbiente.php",
		success:function(r){
			r=jQuery.parseJSON(r);	
			$('#idAmbienteu').val(r['idAmbiente']);
			$('#nombreu').val(r['nombre']);
			$('#aforou').val(r['aforo']);
			$('#ubicacionu').val(r['ubicacion']);
		
		}
	});
}
function actualizarDatos(){
	$.ajax({
		type:"POST",
		url:"../procesos/actualizarDatosAmbiente.php",
		data:$('#frminsertuA').serialize(),
		success:function(r){
			console.log(r);
			if(r==1){
				mostrar();
				swal("!Actualizado con exito¡",":D","success");
			}else{
				swal("!Error¡",":(","error");	
			}
		}
	});
	return false;
}
function eliminarDatos(idAmbiente){
	swal({
		title: "¿Estas seguro de eliminar este registro?",
		text: "!Una vez eliminado no podra recuperarse¡",
		icon: "warning",
		buttons: true,
		dangerMode: true,
	})
	.then((willDelete) => {
		if (willDelete) {
			$.ajax({
				type:"POST",
				url:"../procesos/EliminarDatosAmbiente.php",
				data:"idAmbiente="+idAmbiente,
				success:function(r){
					console.log(r);
					if(r==1){
						mostrar();
						swal("!Eliminado con exito¡",":D","info");
					}else{
						swal("!Error¡",":(","error");	
					}
				}
			});
		} 
	});
}
function insertarDatos() {
	$.ajax({
		type:"POST",
		url:"../procesos/insertarDatosAmbiente.php",
		data:$('#frminsertAmbiente').serialize(),
		success:function(r){
			console.log(r);
			if(r==1){
				$('#frminsertAmbiente')[0].reset();//limpiar formulario
				mostrar();
				swal("!Agregado con exito¡",":D","success");
			}else{
				swal("!Error¡",":(","error");	
			}
		}
	});
	return false;
}

function mostrarReserva(){
	$.ajax({
		type:"POST",
		url:"../procesos/mostrarDatosReserva.php",
		success:function(r){
			$('#tablaDatosReserva').html(r);
		}
	});
}