<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
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
                            <li><a href="#">全职</a></li>
                            <li><a href="#">兼职</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">健康<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">养生</a></li>
                            <li><a href="#">饮食</a></li>
                            <li><a href="#">疾病</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">美容<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">美容</a></li>
                            <li><a href="#">美体</a></li>
                            <li><a href="#">着装</a></li>
                            <li><a href="#">医美</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">情感<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">爱情</a></li>
                            <li><a href="#">婆媳</a></li>
                            <li><a href="#">单身</a></li>
                            <li><a href="#">亲子</a></li>
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
    <div class="main-body-wrapper">
        <!--中间左侧编辑模块-->
        <div class="main-body-left">
            <ul>
                <li class="active"><a>就业</a></li>
                <li><a>健康</a></li>
                <li><a>美容</a></li>
                <li><a>情感</a></li>
                <li><a>教育</a></li>
                <li><a>旅游</a></li>
                <li><a>音乐</a></li>
                <li><a>杂谈</a></li>
                <li><a>本地</a></li>
            </ul>
        </div>
        <div class="main-body-left-zw"></div>
        <!--中间左侧编辑模块-->
         <!--中间中间编辑模块-->
        <div class="main-body-middle">
            <div class="middle-detail">
                <p class="title">就业<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=1">更多</a></span></p>
                <ul>
                    <c:forEach items="${read1}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
                           <div class="middle-detail-img">
                               <img src="<%=request.getContextPath()%>/${x.filepath}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="middle-detail">
                <p class="title">健康<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=2">更多</a></span></p>
                <ul>
                    <c:forEach items="${read2}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="#">
                           <div class="middle-detail-img">
                               <img src="{$c.savepath}{$c.savename}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="middle-detail">
                <p class="title">时尚<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=3">更多</a></span></p>
                <ul>
                    <c:forEach items="${read3}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="#">
                           <div class="middle-detail-img">
                               <img src="{$c.savepath}{$c.savename}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="middle-detail">
                <p class="title">情感<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=4">更多</a></span></p>
                <ul>
                    <c:forEach items="${read4}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="#">
                           <div class="middle-detail-img">
                               <img src="{$c.savepath}{$c.savename}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="middle-detail">
                <p class="title">教育<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=5">更多</a></span></p>
                <ul>
                    <c:forEach items="${read5}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="#">
                           <div class="middle-detail-img">
                               <img src="{$c.savepath}{$c.savename}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="middle-detail">
                <p class="title">旅游<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=6">更多</a></span></p>
                <ul>
                    <c:forEach items="${read6}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="#">
                           <div class="middle-detail-img">
                               <img src="{$c.savepath}{$c.savename}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="middle-detail">
                <p class="title">音乐<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=7">更多</a></span></p>
                <ul>
                    <c:forEach items="${read7}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="#">
                           <div class="middle-detail-img">
                               <img src="{$c.savepath}{$c.savename}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="middle-detail">
                <p class="title">杂谈<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=8">更多</a></span></p>
                <ul>
                    <c:forEach items="${read8}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="#">
                           <div class="middle-detail-img">
                               <img src="{$c.savepath}{$c.savename}" />
                           </div>
                           <div class="middle-detail-content">
                               <p class="middle-detail-content-title">${x.title}</p>
                               <p class="summary">${x.content}</p>
                               <span><a href="###">亲奥运</a></span>
                               <span class="time">2016-09-12</span>
                           </div>
                        </a>
                    </li>
                    </c:forEach>
                </ul>
            </div>
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
<!-- 底部模块-->
    <div>
        <footer  style="background-color:black; color:white;padding:5px;">
        <div class="container text-center" >
        <div>
        4050社区
        
        </div>
        </div>
        </footer>
    </div>
<!-- 底部模块-->
</body>