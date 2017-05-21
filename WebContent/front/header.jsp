<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">教育<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">出国</a></li>
                            <li><a href="#">中小学</a></li>
                            <li><a href="#">高中</a></li>
                            <li><a href="#">继续教育</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">旅游<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">国内</a></li>
                            <li><a href="#">出境</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">音乐<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                           <li><a href="#">音乐</a></li>
                            <li><a href="#">摄影</a></li>
                            <li><a href="#">美术</a></li>
                            <li><a href="#">书法</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">杂谈</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">本地<span class="caret"></span></a>

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