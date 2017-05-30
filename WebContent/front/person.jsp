<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=request.getContextPath()%>/css/reset.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="<%=request.getContextPath()%>/css/person.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/person.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>   
</head>
<body>
    <%@ include file="header.jsp"%>
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
    <div class="fixedMenu">
        <a class="backToTop" href="javascript:scroll(0,0)" title="返回顶部">
            <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
        </a>
        <a class="writeNews" title="我要发帖">
            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
        </a>
    </div>
    <%@ include file="footer.jsp"%>
</body>