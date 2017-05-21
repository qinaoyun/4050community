$(function(){
	//评论事件函数
    $(".submit").click(function(){
        var _userImg="public/images/userImg.jpg";
        var _userNmae="qinaoyun";
        var _comment=$('.input-wrap textarea').val();
        // <li class="item">
        //     <a class="userImg">
        //         <img src=_userImg></img>
        //     </a>
        //     <div class="content">
        //         <div class="user-info">
        //             <a class="user-name">_userNmae</a>
        //         </div>
        //         <p>_comment</p>
        //         <div class="user-action">
        //             <a class="replyAction">回复</a>
        //         </div>
        //         <div class="reply">
        //             <!--<a class='userImg'>
        //                 <img src='public/images/userImg.jpg' />
        //             </a>
        //             <div class='content'>
        //                 <div class='user-info'>
        //                     <a href=''>haha</a>
        //                 </div>
        //                 <p>"+replyNews+"</p>
        //                 <div class='user-action'>
        //                     <a class='replyAction'>回复</a>
        //                 </div>
        //             </div>-->

        //         </div>


        //     </div>
        // </li>
        var _li=$('<li class="item li-item-comment"><a class="userImg"><img src='+_userImg+'></img></a><div class="content"><div class="user-info"><a class="user-name">'+_userNmae+'</a></div><p>'+_comment+'</p><div class="user-action"><a class="replyAction">回复</a></div><div class="reply"></div></div></li>');
        $(".comment-list").prepend(_li);
        //将输入框置空
        $(this).parents('.commentTable').find('textarea').css({'height':'40px'}).val('');
    });

    //回复事件函数
    var funReply=function(){
            //判断输入框个数，为0时进行操作
            if(!($(this).parent().find('textarea').length)){
            var textarea=$("<textarea class='textarea-menu'></textarea>");
            var submit=$("<a class='comment-submit' >提交</a>");
            $(this).parents('.user-action').append(textarea).append(submit);
            //submit.parents(".comment-list").on('click',submit,funSubmit);
            };
    }
    //提交事件函数
    var funSubmit=function(){
            //判断输入框个数，为1时进行操作
            if($(this).parents('.user-action').find('textarea').length=="1"){
            var replyNews=$(this).parents('.user-action').find("textarea").val();
            var replyNewsName="xxx";
            var dom=$("<a class='userImg'><img src='public/images/userImg.jpg' /></a><div class='content'><div class='user-info'><a href=''>haha</a>回复<a>"+replyNewsName +"</a></div><p>"+replyNews+"</p><div class='user-action'><a class='replyAction'>回复</a></div></div>");
            var grandParent=$(this).parent().parent();
            //根据父父父元素class判断是否为reply,若是，在该元素后面追加元素
            if(grandParent.parent().attr('class')=='reply')
                { 
                grandParent.after(dom);
                //$(".replyAction").parents(".comment-list").on('click',$(".replyAction"), funReply);
                //$(this).on('click',funSubmit);
                }
            //这种情况应该是li,在li子元素最前面追加元素
            else{       
                grandParent.find('.reply').prepend(dom);
                //$(".replyAction").on('click', funReply);
                //$(this).on('click',funSubmit);
            }
            $(".comment-list textarea").remove();
            $(".comment-list .comment-submit").remove();
            }
            }
    $(".comment-list").on('click',".replyAction", funReply);
    $(".comment-list").on('click',".comment-submit",funSubmit);

    $('body').on('focusin','textarea',function(){
        $(this).animate({'height':'100px'});
        $(this).css({'overflow':'auto'});
    });
}) ;
