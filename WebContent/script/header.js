$(document).ready(function() {
	$(window).scroll(function() {
		console.log($(window).scrollTop())
		if ($(window).scrollTop() > 71) {
			$('#second-navbar').addClass('navbar-fixed-top');
			$('#other-content').addClass('go-down-on-fixed');
		}
		if ($(window).scrollTop() < 70) {
			$('#second-navbar').removeClass('navbar-fixed-top');
			$('#other-content').removeClass('go-down-on-fixed');
		}
	});
	$("#drop-down").on("click", function(){
		$(".just-if-small").toggle();
	});
});