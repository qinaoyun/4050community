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
            *{margin:0;padding:0;}
            ul{list-style:none;}
            .person-header{margin-top:20px;}
            .person-header-img{width:100%;height:160px;overflow:hidden;}
            .person-header-name{height:80px;position:relative;background:#fff;}
            .person-header-logo{position:absolute;width:100px;height:100px;top:-50px;left:20px;border-radius:50px;overflow:hidden;}
            .person-header-name .name{margin-left:120px;margin-top:0;}
            .person-header-img img{max-width:100%;}
            .person-header-name .follow{margin-right:20px;margin-top:-15px;display:block;text-align:center;float:right;width:150px;line-height:40px;height:40px;border-radius:5px;color: #777;border: 1px solid #ddd;}
            .person-body{margin-top:20px;margin-bottom:20px;}
            .person-body .person-body-left{float:left;width:68%;background:#fff;margin-right:2%;min-height:500px;}
            .person-body .person-body-right{float:left;width:30%;background:#fff;overflow:hidden;}
            .person-body .person-body-left ul{height:38px;line-height:38px;border-bottom: 2px solid #E8E8E8;font-size:14px;}
            .person-body .person-body-left ul li{cursor:pointer;text-align:center;float:left;margin:0 10px;position:relative;padding:0 10px;}
            .person-body .person-body-left ul li.active:after{position:absolute;content:'';border:1px solid #E72418;display:block;width:100%;bottom:0px;left:0;}
            .person-body .person-body-left ul li.active{color:#E72418;}
            .person-body .person-body-left ul li:first-child{margin-left:40px;}
            .person-body .person-body-right>div{float:left;width:50%;text-align:center;}
            .person-body-right{padding-bottom:10px;}
            .article-detail{height:80px;overflow:hidden;margin:0 20px;border-bottom: 1px solid #ddd;}
            .article-detail h4{margin:5px 0;}
            .article-detail .article-detail-img{float:left;height:70px;width:70px;border-radius:35px;overflow:hidden;}
            .article-detail .article-detail-img img{width:100%;}
            .article-detail-info-tilte span{color:#aaa;font-size:14px;margin-left:20px;}
            .article-detail .article-detail-info{float:left;height:70px;padding-left:20px;}
            .article-detail .article-detail-info-desc{height:20px;}
            .article-detail .article-detail-info .date{color:#aaa;font-size:14px;}
            .follow-detail{height:50px;overflow:hidden;margin:0 20px;border-bottom: 1px solid #ddd;position:relative;}
            .follow-detail h4{margin:5px 0;line-height:40px;}
            .follow-detail .follow-detail-img{float:left;height:40px;width:40px;border-radius:20px;overflow:hidden;margin-top:5px;}
            .follow-detail .follow-detail-img img{width:100%;}
            .follow-detail-info-tilte span{color:#aaa;font-size:14px;margin-left:20px;}
            .follow-detail .follow-detail-info{float:left;height:50px;padding-left:20px;position:relative;}
            .follow-detail span{display:block;position:absolute;width:80px;height:30px;border-radius:5px;top:10px;right:40px;background:#2A90D7;text-align:center;color:#fff;line-height:30px;}
            .fans-detail{height:50px;overflow:hidden;margin:0 20px;border-bottom: 1px solid #ddd;position:relative;}
            .fans-detail h4{margin:5px 0;line-height:40px;}
            .fans-detail .fans-detail-img{float:left;height:40px;width:40px;border-radius:20px;overflow:hidden;margin-top:5px;}
            .fans-detail .fans-detail-img img{width:100%;}
            .fans-detail-info-tilte span{color:#aaa;font-size:14px;margin-left:20px;}
            .fans-detail .fans-detail-info{float:left;height:50px;padding-left:20px;position:relative;}
            .fans-detail span{display:block;position:absolute;width:80px;height:30px;border-radius:5px;top:10px;right:40px;background:#2A90D7;text-align:center;color:#fff;line-height:30px;}
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
    <div style="background-color:#eee;width:100%;">
        <div class="container">
        <div class="person-header">
            <div class="person-header-img">
                <img src="images/person-bg.png"/>
            </div>
            <div class="person-header-name">
               <h3 class="name">yanyisong</h3>
               <div class="person-header-logo">
                   <img src="images/userImg.jpg"/>
                </div>
                <span class="follow">已关注</span> 
            </div>
        </div>
        <div class="person-body">
            <div class="person-body-left">
                <ul class="person-body-left-tab">
                    <li attr="article" class="active">文章</li>
                    <li attr="follow-list">关注</li>
                    <li attr="fans-list">粉丝</li>
                </ul>
                <div class="person-body-left-content">
                    <div class="article person-body-left-content-show">
                        <div class="article-detail">
                            <div class="article-detail-img">
                                <img src="public/images/userImg.jpg"/>
                            </div>
                            <div class="article-detail-info">
                                <h4 class="article-detail-info-tilte">大家好<span>属于体育栏目</span></h4>
                                <div class="article-detail-info-desc">大家好大家好大家好大家好大家好大家好大家好大家好大家好</div>
                                <div class="date">2017-12-22</div>
                            </div>
                            
                        </div>
                    </div>  
                    <div style="display:none;" class="follow-list person-body-left-content-show">
                        <div class="follow-detail">
                            <div class="follow-detail-img">
                                <img src="public/images/userImg.jpg"/>
                            </div>
                            <div class="follow-detail-info">
                                <h4 class="article-detail-info-tilte">大家好</h4>
                                
                            </div>
                            <span>关注</span>
                            
                        </div>
                    </div> 
                    <div style="display:none;" class="fans-list person-body-left-content-show">
                        <div class="fans-detail">
                            <div class="fans-detail-img">
                                <img src="public/images/userImg.jpg"/>
                            </div>
                            <div class="fans-detail-info">
                                <h4 class="fans-detail-info-tilte">大家好</h4>
                                
                            </div>
                            <span>关注</span>
                            
                        </div>
                    </div>     
                </div>
            </div>
            <div class="person-body-right">
                <div class="person-body-right-follow">
                    <h3>39</h3>
                    <span>关注</span>
                </div>
                <div class="person-body-right-fans">
                    <h3>39</h3>
                    <span>粉丝</span>
                </div>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    </div>
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
    $(function(){
        $(".person-body-left-tab li").click(function(){
            $(".person-body-left-tab li").removeClass("active");
            $(this).addClass("active");
            var _attr=$(this).attr("attr");
            $(".person-body-left-content-show").hide();
            $(".person-body-left-content").find('.'+_attr).show();
        });
    })
    </script>
</body>
</html>