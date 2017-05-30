 $(function(){
        $(".person-body-left-tab li").click(function(){
            $(".person-body-left-tab li").removeClass("active");
            $(this).addClass("active");
            var _attr=$(this).attr("attr");
            $(".person-body-left-content-show").hide();
            $(".person-body-left-content").find('.'+_attr).show();
        });
    });