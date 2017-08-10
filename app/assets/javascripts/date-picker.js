$(document).ready(function(){
	var data = {'date-format': 'yyyy-MM-dd'};
	$(function(){
	    $('#datetimepicker').attr(data);
	    $('#datetimepicker').datetimepicker({
	    	format : 'YYYY-MM-DD'
	    });
	    $('#datetimepicker2').attr(data);
	    $('#datetimepicker2').datetimepicker({
	    	format : 'YYYY-MM-DD'
	    });
	});
	});
