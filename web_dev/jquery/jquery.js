$(document).ready(function(){
	$('button').click(function(){
		$("h1").fadeOut("slow");
		$("h1").fadeIn("slow");

		$("#block").animate({
			right: '100px'
		});
		$("#block").animate({
			left: '100px'
		});

		$("#hideandseek").slideUp(3000).slideDown(2000);
	}); // $button
});