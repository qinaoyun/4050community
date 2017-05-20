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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">时尚<span class="caret"></span></a>
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
        
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#5bc0de;color:#fff;line-height:40px;text-align:center;">
            <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=1" >更多</a>
            </div>
            <h3 style="background-color:#5bc0de;border-radius:3px;border:1px solid #5bc0de ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">就业</h3>
                <c:forEach items="${read1}" var="x" begin="0" end="2">
                <div class="media" style="background-color:white;border:1px solid white;border-radius:8px;margin-bottom:15px;">
                <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}" style="text-decoration:none;">
                    <div class="media-left" style="padding:5px">
                        
                            <div style="max-width:100px;max-height:100px;overflow:hidden;padding:10px;">
                               <img src="<%=request.getContextPath()%>/${x.filepath}" alt="">
                            </div>
                    
                    </div>
                    
                    <div class="media-body">
                        <h4 class="media-heading text-center" style="margin-top:5px;margin-right:10px;">${x.title}</h4>
                        <p style="padding-right:10px;">${x.content}</p>
                    </div>
                    </a>
                </div>
                <div class="media" style="background-color:white;border:1px solid white;border-radius:8px;margin-bottom:15px;">
          
                </div>
                 </c:forEach>
        </div>
        <div class="container">
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#428bca;color:#fff;line-height:40px;text-align:center;">
            <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=2" >更多</a>
            </div>
            <h3 style="background-color:#428bca;border-radius:3px;border:1px solid #428bca ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">健康</h3>
                <c:forEach items="${read2}" var="x" begin="0" end="2">
                <div class="media" style="background-color:white;border:1px solid white;border-radius:8px;margin-bottom:15px;">
                <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}" style="text-decoration:none;">
                    <div class="media-left" style="padding:5px">
                        
                            <div style="max-width:100px;max-height:100px;overflow:hidden;padding:10px;">
                                <img class="media-object" src="{$c.savepath}{$c.savename}" alt="...">
                            </div>
                    
                    </div>
                    
                    <div class="media-body">
                        <h4 class="media-heading text-center" style="margin-top:5px;margin-right:10px;">${x.title}</h4>
                        <p style="padding-right:10px;">${x.content}</p>
                    </div>
                    </a>
                </div>
                </c:forEach>
        </div>
        <div class="container">
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#5cb85c;color:#fff;text-align:center;line-height:40px;">
            <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=3" >更多</a>
            </div>
            <h3 style="background-color:#5cb85c;border-radius:3px;border:1px solid #5cb85c ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">时尚</h3>
            <c:forEach items="${read3}" var="x" begin="0" end="2">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                    <img src="<%=request.getContextPath()%>/${x.filepath}" alt="...">
                    <div class="caption">
                        <h3>${x.title}</h3>
                        <p>${x.content}</p>
                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                    </div>
                    </div>
                </div>
            </div>
             </c:forEach>
        </div>
    
        <div class="container">
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#d9534f;color:#fff;text-align:center;line-height:40px;">
            <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=4" >更多</a>
            </div>
            <h3 style="background-color:#d9534f;border-radius:3px;border:1px solid #d9534f ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">情感</h3>
            <c:forEach items="${read4}" var="x" begin="0" end="5">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                    <img data-src="<%=request.getContextPath()%>/${x.filepath}" alt="...">
                    <div class="caption">
                        <h3>${x.title}</h3>
                        <p>${x.content}</p>
                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                    </div>
                    </div>
                </div>
               
            </div>
            </c:forEach>
        </div>
        <div class="container">
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#f0ad4e;color:#fff;line-height:40px;text-align:center;">
         <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=5" >更多</a>
            </div>
            <h3 style="background-color:#f0ad4e;border-radius:3px;border:1px solid #f0ad4e ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">教育</h3>
               <c:forEach items="${read5}" var="x" begin="0" end="2">
                <div class="media" style="background-color:white;border:1px solid white;border-radius:8px;margin-bottom:15px;">
                <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}" style="text-decoration:none;">
                    <div class="media-left" style="padding:5px">
                        
                            <div style="max-width:100px;max-height:100px;overflow:hidden;padding:10px;">
                                <img class="media-object" src="<%=request.getContextPath()%>/${x.filepath}" alt="...">
                            </div>
                    
                    </div>
                    
                    <div class="media-body">
                        <h4 class="media-heading text-center" style="margin-top:5px;margin-right:10px;">${x.title}</h4>
                        <p style="padding-right:10px;">${x.content}</p>
                    </div>
                    </a>
                </div>
              </c:forEach>
        </div>
        <div class="container">
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#FFDC00;color:#fff;line-height:40px;text-align:center;">
            <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=6" >更多</a>
            </div>
            <h3 style="background-color:#FFDC00;border-radius:3px;border:1px solid #FFDC00 ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">旅游</h3>
                  <c:forEach items="${read6}" var="x" begin="0" end="2">
                <div class="media" style="background-color:white;border:1px solid white;border-radius:8px;margin-bottom:15px;">
                <a href="{:U('Home/Hotnews/detailhotnewsshow',array('id' => $c['id']))}" style="text-decoration:none;">
                    <div class="media-left" style="padding:5px">
                        
                            <div style="max-width:100px;max-height:100px;overflow:hidden;padding:10px;">
                                <img class="media-object" src="<%=request.getContextPath()%>/${x.filepath}" alt="...">
                            </div>
                    
                    </div>
                    
                    <div class="media-body">
                        <h4 class="media-heading text-center" style="margin-top:5px;margin-right:10px;">${x.title}</h4>
                        <p style="padding-right:10px;">${x.content}</p>
                    </div>
                    </a>
                </div>
                 </c:forEach>
                
        </div>
        <div class="container">
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#F012BE;color:#fff;text-align:center;line-height:40px;">
            <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=7" >更多</a>
            </div>
            <h3 style="background-color:#F012BE;border-radius:3px;border:1px solid #F012BE ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">音乐</h3>
            
             <c:forEach items="${read7}" var="x" begin="0" end="2">
             <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                    <img data-src="<%=request.getContextPath()%>/${x.filepath}" alt="...">
                    <div class="caption">
                        <h3>${x.title}</h3>
                        <p>${x.content}</p>
                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                    </div>
                    </div>
                </div>
                
                
            </div>
            </c:forEach>   
        </div>
    
        <div class="container">
            <div style="float:right;margin-top:20px;width:40px;height:40px;border-radius:5px;background:#001F3F;color:#fff;text-align:center;line-height:40px;">
            <a style="color:#fff;" href="<%=request.getContextPath()%>/showlist.do?firstDirectory=8" >更多</a>
            </div>
            <h3 style="background-color:#001F3F;border-radius:3px;border:1px solid #001F3F ;width:30%;height:40px;line-height:40px;text-align:center;color:#fff;">杂谈</h3>
             <c:forEach items="${read8}" var="x" begin="0" end="2">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                    <img data-src="<%=request.getContextPath()%>/${x.filepath}" alt="...">
                    <div class="caption">
                        <h3>${x.title}</h3>
                        <p>${x.content}</p>
                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                    </div>
                    </div>
                </div>
                
                
            </div>
            </c:forEach>   
        </div>
    </div>
    <div class="comment">我要发帖</div>
    <div>
	</body>