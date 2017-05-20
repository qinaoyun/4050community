
<html >
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>江宁高新园创新服务中心</title>
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <script>
function checkit(){          
  if(form1.username.value==""){       
          alert("请输入用户名!");
          form1.username.result();
        return false;
         }                
       if(form1.password.value==""){   
          alert("密码错误!");
      form1.password.result();
      return false ;
     }
      return true;         
} 
</script>
</head>
<body>
    <form id="form1" action="login.do" method="post">
        <div class="login">
            <div class="loginform">
                <div class="username">
                <input type="text" name="username" placeholder="请输入用户名" />
                </div>
                <div class="password">
                <input type="password" name="password" placeholder="请输入密码" />
                </div>
                <div class="submit">
             
                <input type="image" name="imageField" onclick="return checkit();" src="<%=request.getContextPath()%>/template/admin/images/bb.png" />
                </div>
            </div>
        </div>

    </form>
</body>
</html>
