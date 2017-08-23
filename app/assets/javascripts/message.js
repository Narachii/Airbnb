$(document).ready(function() {
		$("#message_button").prop('disabled', true);

	$('#form_id').on('click',function(ev){
		$("#message_button").prop('disabled', false);
		ev.preventDefault();
		$('#form_id').val("");
	})
})