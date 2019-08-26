jQuery(function($) {
	var myTable = 
	$('#dynamic-table')
	.DataTable( {
    } );

	$('#modificar').on('show.bs.modal', function (event) {
	var button = $(event.relatedTarget); // Button that triggered the modal
	$('#nombre').val(button.data('nombre'));
	$('#nombre2').val(button.data('nombre'));
	console.log(button.data('nombre'));
	})

	$('.eli').click(function(e){
		if (!confirm("Press a button!")) {
			return false;
		};
	});
})