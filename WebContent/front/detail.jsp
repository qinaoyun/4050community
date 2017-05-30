<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=request.getContextPath()%>/css/reset.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="<%=request.getContextPath()%>/css/detail.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/detail.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>   
</head>
<body>
    <%@ include file="header.jsp"%>
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
	               <input type = "hidden" Id = "articleId" value="${article.ID}">
			</div>
			<div class="commentForm">
	            <div class="userImg">
	                <img src="public/images/userImg.jpg"></img>
	            </div>
	            <div class="input-wrap">
	                <textarea id= "articleComment"class="comment_textarea" style="" name="inputText" placeholder="写下您的评论..."></textarea>
	            </div>
            	<div class="submit"><button id= "saveComment">评论</button></div>
            	<div style="clear:both;"></div>
            	 <!-- 异步提交评论 --> 
            <script>
            $("#saveComment").click(function(){
        		$.post("<%=request.getContextPath()%>/saveComment.do",{
        			articleComment : $("#articleComment").val(),
        			articleId : $("#articleId").val()			
        		},
        		function(data,status){
        			var result = data; 
        		},"json");
        	});
            </script>
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
    <%@ include file="footer.jsp"%>
</body>