$(document).ready(function(){
	$('button').click(function(){
		$("h1").fadeOut("slow");
		$("h1").fadeIn("slow");

		$("#feedback").animate({
			left: '100px'
		});
		$("#feedback").animate({
			right: '100px'
		});
	}); // $button
});