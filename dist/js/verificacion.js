jQuery(function($) {
	var myTable = 
	$('#dynamic-table')
	.DataTable( {
    } );

toastr["warning"]("Porfavor busque su colegio e imprima el formulario nivel Basico y nivel Avanzado");
	$('#tutor').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) 
	  $('#colegio').val(button.data('colegio'));
	  $('#nivel').val(button.data('nivel')); 
	})

})