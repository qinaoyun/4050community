<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<%=request.getContextPath()%>/css/reset.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/detail.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
        <script src="<%=request.getContextPath()%>/js/detail.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
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
    <div class="main-body-wrapper">
        <!--中间左侧编辑模块-->
        <div class="main-body-left">
        <p class="main-body-left-title">就业</p>
            <ul>
                <li class="active"><a>全职</a></li>
                <li><a>兼职</a></li>
            </ul>
        </div>
        <div class="main-body-left-zw"></div>
        <!--中间左侧编辑模块-->
         <!--中间中间编辑模块-->
        <div class="main-body-middle">
            <div class="middle-detail">
                 <h3>${article.title}</h3>
                 <p class="info">
                   <span>${article.time}</span>
                   <span>来源: 人民日报</span>
                 </p>
	              <div class="content">
	           		 ${article.content}
	              </div>
			</div>
			<div class="commentForm">
	            <div class="userImg">
	                <img src="public/images/userImg.jpg"></img>
	            </div>
	            <div class="input-wrap">
	                <textarea class="comment_textarea" style="" name="inputText" placeholder="写下您的评论..."></textarea>
	            </div>
            	<div class="submit"><span>评论</span></div>
            	<div style="clear:both;"></div>
        	</div>
        	<ul class="comment-list">
            <li class="item li-item-comment">
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
                    <div class="reply" style="margin-top:10px;">
                    </div>
                </div>
            </li>
            <li class="item li-item-comment">
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
                    <div class="reply" style="margin-top:10px;">
                        <a class='userImg'>
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
                        </div>

                    </div>
                </div>
            </li>
        </ul>
        </div>
         <!--中间中间编辑模块-->
        <!--中间右侧编辑模块-->
        <div class="main-body-right"></div>
        <!--中间右侧编辑模块-->
    </div>
    
<!--右侧编辑模块-->
    <div class="fixedMenu">
        <a class="backToTop" href="javascript:scroll(0,0)" title="返回顶部">
            <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
        </a>
        <a class="writeNews" title="我要发帖">
            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
        </a>
    </div>
<!--右侧编辑模块-->
    <div>
        <footer  style="background-color:black; color:white;padding:5px;">
        <div class="container text-center" >
        <div>
        4050社区
        
        </div>
        </div>
        </footer>
    </div>
</body>