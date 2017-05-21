<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>后台登录</title> 
<head>
    <style>
    *{
    font: 13px/1.5 '微软雅黑', Verdana, Helvetica, Arial, sans-serif;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -box-sizing: border-box;
    padding:0;
    margin:0;
    list-style:none;
    box-sizing: border-box;
}

body,html{
    height:100%;
    overflow:hidden;
}
body{
    background:url(public/images/web_login_bg.jpg) no-repeat center;
    background-size: cover;
}
a{
    color:#27A9E3;
    text-decoration:none;
    cursor:pointer;
}
.login{
    margin: 150px auto 0 auto;
    min-height: 420px;
    max-width: 420px;
    padding: 40px;
    background-color: #ffffff;
    margin-left: auto;
    margin-right: auto;
    border-radius: 4px;
    /* overflow-x: hidden; */
    box-sizing: border-box;
}
a.logo{
    display: block;
    height: 58px;
    width: 167px;
    margin: 0 auto 30px auto;
    background-size: 167px 42px;
}
.message {
    margin: 10px 0 0 -58px;
    padding: 18px 10px 18px 60px;
    background: #27A9E3;
    position: relative;
    color: #fff;
    font-size: 16px;
}
#darkbannerwrap {
    background: url(public/images/aiwrap.png);
    width: 18px;
    height: 10px;
    margin: 0 0 20px -58px;
    position: relative;
}

input[type=text],
input[type=file],
input[type=password],
input[type=email], select {
    border: 1px solid #DCDEE0;
    vertical-align: middle;
    border-radius: 3px;
    height: 50px;
    padding: 0px 16px;
    font-size: 14px;
    color: #555555;
    outline:none;
    width:100%;
}
input[type=text]:focus,
input[type=file]:focus,
input[type=password]:focus,
input[type=email]:focus, select:focus {
    border: 1px solid #27A9E3;
}


input[type=submit],
input[type=button]{
    display: inline-block;
    vertical-align: middle;
    padding: 12px 24px;
    margin: 0px;
    font-size: 18px;
    line-height: 24px;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    color: #ffffff;
    background-color: #27A9E3;
    border-radius: 3px;
    border: none;
    -webkit-appearance: none;
    outline:none;
    width:100%;
}
hr.hr15 {
    height: 15px;
    border: none;
    margin: 0px;
    padding: 0px;
    width: 100%;
}
hr.hr20 {
    height: 20px;
    border: none;
    margin: 0px;
    padding: 0px;
    width: 100%;
}

.copyright{
    font-size:14px;
    color:rgba(255,255,255,0.85);
    display:block;
    position:absolute;
    bottom:15px;
    right:15px;
}
</style>
</head> 
<body> 

<div class="login">
    <div class="message">4050社区-管理登录</div>
    <div id="darkbannerwrap"></div>
    <form id="form1" action="login.do" method="post">              
                <input type="text" name="username" placeholder="请输入用户名" />
                <hr class="hr15">
              
                <input type="password" name="password" placeholder="请输入密码" />
               <hr class="hr15">
                <input value="登录" style="width:100%;" type="submit">
    </form>
  
	
</div>

<div class="copyright">© 4050社区 by<a href="http://www.17sucai.com/" target="_blank">南通日报</a></div>

</body>
</html>