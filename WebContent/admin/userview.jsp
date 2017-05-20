<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hello World</title>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
   <c:forEach items="${obj}" var="obj">
   
   <form action="userupdate.do" method="post" enctype="multipart/form-data">
   <input type="hidden" name="ID" value="${obj.ID}" /> 
   <table style="border:1px solid blue">
   <tr height="50px">
   <th>用户名</th>
   <td>
     <input type="text" name="username" value="${obj.username}"/>
   <td>
   </tr>
   <tr>
   <th>账户类型</th>
   <td><input type="text" name="accounttype" value="${obj.accounttype}"/></td>
   </tr>
   <tr>
   <th>Emaiil</th>
   <td>
   <input type="email" name="email" value="${obj.email}"/>   
   </td>
   </tr>
   <tr>
   <th>联系方式</th>
  <td>
    <input type="number" name="tel" value="${obj.tel}"/> 
  </td>
  </tr>
  <tr>
  <th>公司</th>
   <td>
	<input type="text" name="enterprise" value="${obj.enterprise}" />
	</td>
	</tr>
	</table>
<!-- 	<input type="submit" class="formButton" value="确  定" />&nbsp;&nbsp; -->
	<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回" />
	
	
   </form>
   </c:forEach>
 
</body>
</html>