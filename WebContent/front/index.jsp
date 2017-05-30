<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="<%=request.getContextPath()%>/css/reset.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet">       
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
  <body data-spy="scroll" data-target=".navbar-example">
    <%@ include file="header.jsp"%>
    <div class="main-body-wrapper">
        <!--中间左侧编辑模块-->
        <div class="main-body-left navbar-example">
            <ul>
                <li><a class="active" href="#jy">就业</a></li>
                <li><a href="#jk">健康</a></li>
                <li><a href="#mr">美容</a></li>
                <li><a href="#qg">情感</a></li>
                <li><a href="#jy">教育</a></li>
                <li><a href="#ly">旅游</a></li>
                <li><a href="#yy">音乐</a></li>
                <li><a href="#zt">杂谈</a></li>
                <li><a href="#bd">本地</a></li>
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
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
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
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
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
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
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
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
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
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
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
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
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
            <div class="middle-detail" id="zt">
                <p class="title">杂谈<span><a href="<%=request.getContextPath()%>/showlist.do?firstDirectory=8">更多</a></span></p>
                <ul>
                    <c:forEach items="${read8}" var="x" begin="0" end="2">
                    <li class="overh">
                        <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}">
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
    <%@ include file="footer.jsp"%>
<!-- 底部模块-->
</body>
