jQuery(function($) {
	var myTable = 
	$('#dynamic-table')
	.DataTable( {
    } );

	$('#modificar').on('show.bs.modal', function (event) {
	var button = $(event.relatedTarget); // Button that triggered the modal
	$('#cedula').val(button.data('cedula'));
	$('#nombre').val(button.data('nombre'));
	$('#celular').val(button.data('celular'));
	$('#correo').val(button.data('correo'));
	$('#curso').val(button.data('curso'));
	$('#nivel').val(button.data('nivel'));
	$('#nombret').val(button.data('nombret'));
	$('#correot').val(button.data('correot'));
	$('#colegio').val(button.data('colegio'));
	$('#telefono').val(button.data('telefono'));
	$('#horario').val(button.data('horario'));
	})

	$('.eli').click(function(e){
		if (!confirm("Press a button!")) {
			return false;
		};
	});
})