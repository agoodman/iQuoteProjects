// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
	$('.control a, .control input[type=submit]').button();
	$('.control a.pencil').button({icons:{primary:'ui-icon-pencil'},text:false});
	$('.control a.wrench').button({icons:{primary:'ui-icon-wrench'},text:false});
	$('.control a.trash').button({icons:{primary:'ui-icon-trash'},text:false});
	$('.control a.plus').button({icons:{primary:'ui-icon-plus'},text:false});
	$('.datepicker').datepicker({dateFormat:"yy-mm-dd"});
});
