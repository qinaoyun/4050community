jQuery(function($){
	sd2 = $("#main_slider").switchable({
		  putTriggers:'appendTo',
		  triggerType:"click",
		  triggers:"&nbsp;",
		  prev:"#prev",
		  next:"#next",
		  panels:'li',
		  effect:'scrollLeft',
		  end2end:true,
		  loop:true,
		  autoplay:true,
		  interval:3,
		  currentTriggerCls:'on',
		  api:true
		});

	sd1 = $("#news_slider").switchable({
		  putTriggers:'appendTo',
		  panels:'li',
		  triggerType:"click",
		  effect:'scrollLeft',
		  end2end:true,
		  loop:true,
		  autoplay:true,
		  interval:3,
		  currentTriggerCls:'on',
		  api:true
		});
});