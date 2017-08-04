$(document).ready(function() {
	var count = 0;
	var count_bed = 0;

	$("#plus").on("click", function(){
		count ++;
	$('#counter').text(count);
	$('#hidden').val(count);
	});

	$("#plus-bed").on("click", function(){
		count_bed ++;
	$('#counter-bed').text(count_bed);
	$('#hidden-bed').val(count_bed);
	});

	$("#minus").on("click", function(){
		count --;
		$('#counter').text(count);
		$('#hidden').val(count);
	});

	$("#minus-bed").on("click", function(){
		count_bed --;
		$('#counter-bed').text(count_bed);
		$('#hidden-bed').val(count_bed);
	});

});
