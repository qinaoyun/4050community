<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=request.getContextPath()%>/css/reset.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="<%=request.getContextPath()%>/css/list.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/list.js"></script>
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
        	 <c:forEach items="${read}" var="x" >
	            <div class="middle-detail">
	                <ul>
	                    <li class="overh">
	                        <a href="<%=request.getContextPath()%>/showdetail.do?ID=${x.ID}">
	                           <div class="middle-detail-img">
	                               <img src="{$c.savepath} {$c.savename}" />
	                           </div>
	                           <div class="middle-detail-content">
	                               <p class="middle-detail-content-title">${x.title}</p>
	                               <p class="summary">${x.content}</p>
	                               <span><a href="###">亲奥运</a></span>
	                               <span class="time">2016-09-12</span>
	                           </div>
	                        </a>
	                    </li>
	                    
	                </ul>
	            </div>
            </c:forEach>
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