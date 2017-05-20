<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
        <style>
            .thumbnail:hover, .media:hover{
                box-shadow:5px 5px 5px #9e9c9c;
                transform:translateX(3px);
                transform:translateY(3px);
            }
            .comment{
                width:70px;
                height:70px;
                line-height:70px;
                border-radius:35px;
                color:#fff;
                background:#01FF70;
                position:fixed;
                top:100px;
                left:70%;
                text-align:center;
                z-index:10;
            }
            .comment:hover{
               
                transform:rotateZ(360deg);
                -webkit-transform:rotateZ(360deg);
                cursor:pointer;
               
                
               
            }
        </style>
        <style>
            *{
            margin:0;
            padding:0;
            }
            ul{
                list-style:none;
            }
            .thumbnail:hover, .media:hover{
                box-shadow:5px 5px 5px #9e9c9c;
                transform:translateX(3px);
                transform:translateY(3px);
            }
            .comment{
                width:70px;
                height:70px;
                line-height:70px;
                border-radius:35px;
                color:#fff;
                background:#01FF70;
                position:fixed;
                top:100px;
                right:10px;
                text-align:center;
                z-index:10;
            }
            .comment:hover{
                transform:rotateZ(180deg);
                -webkit-transform:rotateZ(180deg);
                cursor:pointer;  
            }
            .userImg{
                float: left;
                display: block;
                width: 30px;
                height: 30px;
                border: 1px solid #e8e8e8;
                border-radius: 50%;
                background: url(public/images/defaultUserImg.png) no-repeat center;
                overflow: hidden;
            }
            .userImg img{
                width:100%;
                height:100%;
            }
            .input-wrap input{
                width:90%;
            }
            .input-wrap{
                margin-left:40px;
                margin-right:10px;
                width:200px;
                line-height:30px;
                display:inline-block;
            }
            .submit{
                float: right;
                line-height: 30px;
                background-color: #3f404c;
                width: 110px;
                height: 30px;
                color: #fff;
                text-align: center;
                cursor: pointer;
            }
            .content{
                margin-left: 42px;
                overflow: hidden;
            }
        </style>
</head>
<body>
    <nav class="navbar-inverse">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{:U(GROUP_NAME . '/Index/index')}">4050社区</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">就业<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">健康<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">美容<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">情感<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">教育<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">旅游<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">音乐<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">杂谈<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">本地<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">登录</a></li>
                        <li><a href="#">注册</a></li>
                    </ul>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="container">
        <ol class="breadcrumb" style="margin-bottom:0;background:#fff;">
            <li><a href="#">Home</a></li>
            <li><a href="#">Library</a></li>
            <li class="active">Data</li>
        </ol>
    </div>
    <div style="background-color:#eee;width:100%;">
        <div class="container">
            <h3 style="background-color:#5bc0de;border-radius:3px;border:1px solid #5bc0de ;width:100%;height:40px;line-height:40px;text-align:center;color:#fff;">${article.title}</h3>
            <p class="info" style="color: #888888;">
                <span>${article.time}</span>
                <span>来源: 人民日报</span>
            </p>
            <div class="content">
            ${article.content}
            </div>
            <input type="hidden" id="articleId"value="${article.ID}">
        </div>
    </div>
        <div class="container">
        <div class="commentTable">
            <div class="userImg">
                <img src="public/images/userImg.jpg"></img>
            </div>
            <div class="input-wrap">
                <input name="inputText" placeholder="写下您的评论..." id=""></input>
            </div>
            <div ><button class="submit" id="submitComment">评论</button></div>
            
            <div style="clear:both;"></div>
        </div>
    </div>
    <div class="container">
        <ul class="comment-list">
            <li class="item">
                <a class="userImg">
                    <img src="public/images/userImg.jpg"></img>
                </a>
                <div class="content">
                    <div class="user-info">
                        <a class="user-name">我的朋友</a>
                    </div>
                    <p>大家好</p>
                    <div class="user-action">
                        <a class="replyAction">回复</a>
                    </div>
                    <div class="reply">
                        <!--<a class='userImg'>
                            <img src='public/images/userImg.jpg' />
                        </a>
                        <div class='content'>
                            <div class='user-info'>
                                <a href=''>haha</a>
                            </div>
                            <p>"+replyNews+"</p>
                            <div class='user-action'>
                                <a class='replyAction'>回复</a>
                            </div>
                        </div>-->

                    </div>


                </div>
            </li>
        </ul>
    </div>
    <div class="comment">我要发帖</div>
    <div>
        <footer  style="background-color:black; color:white;padding:5px;">
        <div class="container text-center" >
        <div>
        4050社区
        
        </div>
        </div>
        </footer>
    </div>
    <script>
    //评论事件函数
    $(".submit").click(function(){
        var _userImg="public/images/userImg.jpg";
        var _userNmae="qinaoyun";
        var _comment=$('.input-wrap input').val();
        var _li=$('<li class="item"><a class="userImg"><img src='+_userImg+'></img></a><div class="content"><div class="user-info"><a class="user-name">'+_userNmae+'</a></div><p>'+_comment+'</p><div class="user-action"><a class="replyAction">回复</a></div><div class="reply"></div></div></li>');
        $(".comment-list").prepend(_li);
    });

    //回复事件函数
    var funReply=function(){
            //判断输入框个数，为0时进行操作
            if(!($(this).parent().find('input').length)){
            var input=$("<input type='text'></input>");
            var submit=$("<input class='comment-submit' type='submit'></input>");
            $(this).parent().append(input).append(submit);
            //submit.parents(".comment-list").on('click',submit,funSubmit);
            };
    }
    //提交事件函数
    var funSubmit=function(){
            //判断输入框个数，为1时进行操作
            if($(this).parent().find('input[type="text"]').length=="1"){
            var replyNews=$(this).parent().find("input[type='text']").val();
            var dom=$("<a class='userImg'><img src='public/images/userImg.jpg' /></a><div class='content'><div class='user-info'><a href=''>haha</a></div><p>"+replyNews+"</p><div class='user-action'><a class='replyAction'>回复</a></div></div>");
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
            $(".comment-list input").remove();
            }
            }
    $(".comment-list").on('click',".replyAction", funReply);
    $(".comment-list").on('click',".comment-submit",funSubmit);
               
        $("#submitComment").click(function(){
    		$.post("<%=request.getContextPath() %>/saveComment.do",{
    			comment : $("#comment").val(),
    			articleId : $("#articleId").val()
    		},
    		function(data,status){
    		
    		},"json");
    	});
     
    </script>
</body>