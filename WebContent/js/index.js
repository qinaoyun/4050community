$(function(){
	$('.middle-detail').css({'height':'1000px'});
	var _initTop=0;
	var _jy=$('#jy').offset().top + $('#jy').height();
	var _jk=$('#jk').offset().top + $('#jk').height();
	var _mr=$('#mr').offset().top + $('#mr').height();
	var _qg=$('#qg').offset().top + $('#qg').height();
	var _jyu=$('#jyu').offset().top + $('#jyu').height();
	var _ly=$('#ly').offset().top + $('#ly').height();
	var _yy=$('#yy').offset().top + $('#yy').height();
	var _zt=$('#zt').offset().top + $('#zt').height();
	var _bd=$('#bd').offset().top + $('#bd').height();
	function scrollSpy(){
		 _initTop=$(window).scrollTop();
		if(_initTop < _jy || _initTop == _jy){
			$('.main-body-left a').removeClass('active');
			$(".jy").addClass('active');
		}
		if(_initTop > _jy && (_initTop < _jk || _initTop == _jk)){
			$('.main-body-left a').removeClass('active');
			$(".jk").addClass('active');
		}
		if(_initTop > _jk && (_initTop < _mr || _initTop == _mr)){
			$('.main-body-left a').removeClass('active');
			$(".mr").addClass('active');
		}
		if(_initTop > _mr && (_initTop < _qg || _initTop == _qg)){
			$('.main-body-left a').removeClass('active');
			$(".qg").addClass('active');
		}
		if(_initTop > _qg && (_initTop < _jyu || _initTop == _jyu)){
			$('.main-body-left a').removeClass('active');
			$(".jyu").addClass('active');
		}
		if(_initTop > _jyu && (_initTop < _ly || _initTop == _ly)){
			$('.main-body-left a').removeClass('active');
			$(".ly").addClass('active');
		}
		if(_initTop > _ly && (_initTop < _yy || _initTop == _yy)){
			$('.main-body-left a').removeClass('active');
			$(".yy").addClass('active');
		}
		if(_initTop > _yy && (_initTop < _zt || _initTop == _zt)){
			$('.main-body-left a').removeClass('active');
			$(".zt").addClass('active');
		}
		if(_initTop > _zt){
			$('.main-body-left a').removeClass('active');
			$(".bd").addClass('active');
		}
	}
	scrollSpy();
	$(window).on('scroll', function() {
		scrollSpy();	
	});
});