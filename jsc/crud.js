function mostrar(){
	$.ajax({
		type:"POST",
		url:"procesos/mostrarDatos.php",
		success:function(r){
			$('#tablaDatos').html(r);
		}
	});
}

function obtenerDatos(idEquipo) {
	$.ajax({
		type:"POST",
		data:"idEquipo="+idEquipo,
		url:"procesos/obtenerDatos.php",
		success:function(r){
			r=jQuery.parseJSON(r);	
			$('#idEquipo').val(r['idEquipo']);
			$('#codigou').val(r['codigo']);
			$('#nombreu').val(r['nombre']);
			$('#estadou').val(r['estado']);
			$('#FK_ambienteu').val(r['FK_ambiente']);
			$('#novedadu').val(r['novedad']);
		
		}
	});
}
function actualizarDatos(){
	$.ajax({
		type:"POST",
		url:"procesos/actualizarDatos.php",
		data:$('#frminsertu').serialize(),
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
function eliminarDatos(idEquipo){
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
				url:"procesos/EliminarDatos.php",
				data:"idEquipo="+idEquipo,
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
		url:"procesos/insertarDatos.php",
		data:$('#frminsert').serialize(),
		success:function(r){
			console.log(r);
			if(r==1){
				$('#frminsert')[0].reset();//limpiar formulario
				mostrar();
				swal("!Agregado con exito¡",":D","success");
			}else{
				swal("!Error¡",":(","error");	
			}
		}
	});
	return false;
}

function mostrarNovedad(){
	$.ajax({
		type:"POST",
		url:"../procesos/mostrarDatosNovedad.php",
		success:function(r){
			$('#tablaDatosNovedad').html(r);
		}
	});
}

function obtenerDatosNovedad(idEquipo) {
	$.ajax({
		type:"POST",
		data:"idEquipo="+idEquipo,
		url:"procesos/obtenerDatosNovedad.php",
		success:function(r){
			r=jQuery.parseJSON(r);	
			$('#idEquipou').val(r['idEquipo']);
		}
	});
}
function registrarNovedad() {
	$.ajax({
		type:"POST",
		url:"procesos/insertarDatosNovedad.php",
		data:$('#frminsertnov').serialize(),
		success:function(r){
			console.log(r);
			if(r==1){
				$('#frminsertnov')[0].reset();//limpiar formulario
				mostrar();
				swal("!Agregado con exito¡",":D","success");
			}else{
				swal("!Error¡",":(","error");	
			}
		}
	});
	return false;
}