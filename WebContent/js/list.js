$(function(){
	$('.main-body-left li').click(function(){
		$('.main-body-left li').removeClass('active');
		$(this).addClass('active');
	});
});