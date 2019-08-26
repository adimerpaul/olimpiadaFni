$('#formulario').submit(function (e) {
	var parametros={
		'nombre':$('#nombre').val(),
        'cedula':$('#cedula').val(),
        'celular':$('#celular').val(),
        'correo':$('#correo').val(),
        'curso':$('#curso').val(),
        'nivel':$('#nivel').val(),
        'nombret':$('#nombret').val(),
        'correot':$('#correot').val(),
        'colegio':$('#colegio').val(),
        'telefono':$('#telefono').val(),
        'horario':$('#horario').val(),
        'celulart':$('#celulart').val(),
	}
	$.ajax({
		data:parametros,
		url:'inscripcion/registro',
		type:'post',
		success: function(e){
			console.log(e);
			toastr["success"]("Registrado corretamente!!!");
			$('#nombre').prop('value','');
			$('#cedula').prop('value','');
			$('#celular').prop('value','');
			$('#correo').prop('value','');
		}
	}).fail(function () {
		toastr["warning"]("Ya se registro al estudiante, o algo salio mal!!!");
	});
	$('#my-modal').modal('hide');
	if ($('#nivel').val()=="Nivel Basico") {
		$.ajax({
			url:'inscripcion/cuposbasico',
			type:'post',
			beforeSend:function (argument) {
				toastr["info"]("cargando");
			},
			success: function(e){
				document.getElementById('tabla').innerHTML=e;
			}
		});
      document.getElementById('mensaje1').style.display = 'block';
      document.getElementById('mensaje2').style.display = 'none';
      $.ajax({
			url:'inscripcion/horariobasico',
			type:'post',
			success: function(e){
				horario.innerHTML=e;
			}
		}); 
	}else{
		$.ajax({
			url:'inscripcion/cuposavanzado',
			type:'post',
			beforeSend:function (argument) {
				toastr["info"]("cargando");
			},
			success: function(e){
				document.getElementById('tabla').innerHTML=e;
			}
		});
      document.getElementById('mensaje1').style.display = 'none';
      document.getElementById('mensaje2').style.display = 'block';
      $.ajax({
			url:'inscripcion/horarioavanzado',
			type:'post',
			success: function(e){
				horario.innerHTML=e;
			}
		}); 

	}
	return false;
})


toastr["warning"]("Porfavor registre a todos los estudiantes del colegio y al finalizar imprima el formulario En la opcion Formularios");


var curso = document.getElementById('curso');
var nivel = document.getElementById('nivel');
var horario=document.getElementById('horario');
curso.addEventListener('change',
  function(){
    var selectedOption = this.options[curso.selectedIndex];
                                     /*<option value="3ro de Secundaria">3ro de Secundaria</option>
                                    <option value="4to de Secundaria">4to de Secundaria</option>
                                    <option value="5to de Secundaria">5to de Secundaria</option>
                                    <option value="6to de Secundaria">6to de Secundaria</option>*/
    if (selectedOption.text == "3ro de Secundaria" || selectedOption.text == "4to de Secundaria" || 
        selectedOption.text == "5to de Secundaria") {
      nivel.innerHTML ="<option value='Nivel Basico'>Nivel Basico</option>"+
                       "<option value='Nivel Avanzado'>Nivel Avanzado</option>";
      //document.getElementById('tablanivel1').style.display = 'block';
      $.ajax({
			url:'inscripcion/cuposbasico',
			type:'post',
			beforeSend:function (argument) {
				toastr["info"]("cargando");
			},
			success: function(e){
				document.getElementById('tabla').innerHTML=e;
			}
		});

       
            document.getElementById('mensaje1').style.display = 'block';
      document.getElementById('mensaje2').style.display = 'none';
        $.ajax({
			url:'inscripcion/horariobasico',
			type:'post',
			success: function(e){
				horario.innerHTML=e;
			}
		});     

    }else{
      nivel.innerHTML ="<option value='Nivel Avanzado'>Nivel Avanzado</option>";
      //document.getElementById('tablanivel1').style.display = 'none';
      $.ajax({
			url:'inscripcion/cuposavanzado',
			type:'post',
			beforeSend:function (argument) {
				toastr["info"]("cargando");
			},
			success: function(e){
				document.getElementById('tabla').innerHTML=e;
			}
		});
            document.getElementById('mensaje1').style.display = 'none';
       $.ajax({
			url:'inscripcion/horarioavanzado',
			type:'post',
			success: function(e){
				horario.innerHTML=e;
			}
		}); 
    }
  });
nivel.addEventListener('change',
  function(){
    var selectedOption = this.options[nivel.selectedIndex];
    console.log(selectedOption.text);
    if (selectedOption.text == "Nivel Basico") {
      //document.getElementById('tablanivel1').style.display = 'block';
      //document.getElementById('tablanivel2').style.display = 'none';
      		$.ajax({
			url:'inscripcion/cuposbasico',
			type:'post',
			beforeSend:function (argument) {
				toastr["info"]("cargando");
			},
			success: function(e){
				document.getElementById('tabla').innerHTML=e;
			}
		});
      document.getElementById('mensaje1').style.display = 'block';
      document.getElementById('mensaje2').style.display = 'none';
      $.ajax({
			url:'inscripcion/horariobasico',
			type:'post',
			success: function(e){
				horario.innerHTML=e;
			}
		}); 
    }else{
      //document.getElementById('tablanivel1').style.display = 'none';
      //document.getElementById('tablanivel2').style.display = 'block';
      $.ajax({
			url:'inscripcion/cuposavanzado',
			type:'post',
			beforeSend:function (argument) {
				toastr["info"]("cargando");
			},
			success: function(e){
				document.getElementById('tabla').innerHTML=e;
			}
		});
      document.getElementById('mensaje1').style.display = 'none';
      document.getElementById('mensaje2').style.display = 'block';
      $.ajax({
			url:'inscripcion/horarioavanzado',
			type:'post',
			success: function(e){
				horario.innerHTML=e;
			}
		}); 
    }
  });
