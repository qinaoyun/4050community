 $(function(){
        //轮播函数
        function bigSlide(){
            ZDK.define(function(require){
                require('module.slider');
                ZDK.module.slide({
                    target:$(".slide-box-ul"),
                    item:'li',
                    size:1,
                    step:1,
                    prev: '.slide-pager-prev',
                    next: '.slide-pager-next',
                    time:400,
                    timeout:4000,
                    path:false,
                    oninited: function(slide){
                        var $elem = $(".slide-pager-ul");
                        slide.cur = $elem.find('li').click(function(){
                            var $this = $(this);
                            var index = $this.index();
                            slide.play(index);
                        });
                    }
                }).on("play",function(data){
                    var index = data.index;
                    data.target.cur.eq(index).addClass('curr').siblings('.curr').removeClass('curr');
                });
            });
        }
        //翻页轮播
        function pageSlide(starget,prev,next,item){
            ZDK.define(function(require){
                require('module.slider');
                ZDK.module.slide({
                    target:$(starget),
                    item:'li',
                    size:item,
                    step:1,
                    prev: prev,
                    next: next,
                    time:400,
                    timeout:4000,
                    path:false
                }).on("play");
            });
        }
        // //图片放大
        // function picScale(){
        //     $(".floor-task-item img").hover(function(){
        //         $(this).css('transform','scale(1.03)');
        //         $(this).css('transition','all 0.3s ease');
        //     },function(){
        //         $(this).css('transform','scale(1)');
        //     })
        // }
        //排行切换
        function rankTab(){
            var $tab = $(".right-title-ul li");
            var $rank = $(".right-content-ul");
            $tab.removeClass('curr');
            $tab.eq(2).addClass('curr');
            $rank.hide();
            $rank.eq(2).show();
            $tab.hover(function(){
                var index = $(this).index();
                $tab.removeClass('curr');
                $(this).addClass('curr');
                $rank.hide();
                $rank.eq(index).show();
            });
        }
        //入驻商户详细
        function joinShow(){
            $(".join-item").hover(function(){
                var index = $(this).index;
                $(this).find('.join-hover').stop().animate({top:0},400);
            },function(){
                $('.join-item .join-hover').stop().animate({top:113},400);
            });
        }
        //开店数据统计
        function openShopwzkf(tag){
            var date = new Date();
            date.setDate(date.getDate()+3);
            ZDK.cookie.setCookie('openshopfrom', tag, date, '/', '.'+window.ZBJInfo.pageDomain);
        }
        var openBtn = $(".data-left-btn");
        var openBtn2 = $(".join-btn");
        openBtn.click(function(){
            openShopwzkf('wzkf-index1');
        });
        openBtn2.click(function(){
            openShopwzkf('wzkf-index2');
        });
        //自定义顶部标题
        function changeTitle(){
            var title = $("#channel_name").text().trim();
            if(title.length>0){
                $(".item-txt .ui-logo-sub .item-txt").empty().html(title);
                $(".item-txt .ui-logo-sub").attr('title',title);
            }
        }
        joinShow();
        rankTab();
        bigSlide();
        pageSlide('.kfal-content-ul','.kfal-btn1','.kfal-btn2',6);
        pageSlide('.floor-01 .floor-slide-ul','.floor-01 .page-left','.floor-01 .page-right',1);
        pageSlide('.floor-02 .floor-slide-ul','.floor-02 .page-left','.floor-02 .page-right',1);
        pageSlide('.floor-03 .floor-slide-ul','.floor-03 .page-left','.floor-03 .page-right',1);
        picScale();
        changeTitle();
    })