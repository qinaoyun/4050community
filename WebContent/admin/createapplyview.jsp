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
   
   <form action="createapplyupdate.do" method="post" enctype="multipart/form-data">
   <input type="hidden" name="ID" value="${obj.ID}" />
     <table style="border:1px solid blue">
				<tr>
					<td>
						毕业时间
					</td>
					<td>
						<input  class="formText" name="graduatedate" value="${obj.graduatedate}" type="text">
					</td>
					<td>
						培养院校代码
					</td>
					<td>
						<input class="formText" name="trainschoolnum" value="${obj.trainschoolnum}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						院校名称
					</td>
					<td>
						<input class="formText" name="schoolname" value="${obj.schoolname}" type="text">
					</td>
					<td>
						身份证号或证件号
					</td>
					<td>
						<input class="formText" name="identy" value="${obj.identy}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						姓名
					</td>
					<td>
						<input class="formText" name="name" value="${obj.name}" type="text">
					</td>
					<td>
						性别
					</td>
					<td>
						<input class="formText" name="sex" value="${obj.sex}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						出生年月
					</td>
					<td>
						<input class="formText" name="birth" value="${obj.birth}" type="text">
					</td>
					<td>
						学位
					</td>
					<td>
						<input class="formText" name="degree" value="${obj.degree}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						学历
					</td>
					<td>
						<input class="formText" name="grade" value="${obj.grade}" type="text">
					</td>
					<td>
						专业名称
					</td>
					<td>
						<input class="formText" name="majorname" value="${obj.majorname}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						专业代码
					</td>
					<td>
						<input class="formText" name="majornum" value="${obj.majornum}" type="text">
					</td>
					<td>
						民族
					</td>
					<td>
						<input class="formText" name="nation" value="${obj.nation}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						户籍所在地
					</td>
					<td>
						<input class="formText" name="home" value="${obj.home}" type="text">
					</td>
					<td>
						联系电话
					</td>
					<td>
						<input class="formText" name="tel" value="${obj.tel}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						email
					</td>
					<td>
						<input class="formText" name="email" value="${obj.email}" type="text">
					</td>
					<td>
						长住地址
					</td>
					<td>
						<input class="formText" name="address" value="${obj.address}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						创业企业名称
					</td>
					<td>
						<input class="formText" name="enterprisename" value="${obj.enterprisename}" type="text">
					</td>
					<td>
						企业注册时间
					</td>
					<td>
						<input class="formText" name="registerdate" value="${obj.registerdate}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						工商注册号
					</td>
					<td>
						<input class="formText" name="registernum" value="${obj.registernum}" type="text">
					</td>
					<td>
						税务登记号
					</td>
					<td>
						<input class="formText" name="taxnum" value="${obj.taxnum}" type="text">
					</td>
				</tr>

				<tr>
					<td>
						经营范围
					</td>
					<td>
						<input class="formText" name="business" value="${obj.business}" type="text">
					</td>
				</tr>
				
				<!-- <tr>
					<th>
						&nbsp;
					</th>
					<td>
						<input type="submit"  class="u_btn" value="提 交" hidefocus />
					</td>
				</tr> -->
			</table>
	<input type="submit" class="formButton" value="确  定" />&nbsp;&nbsp;
	<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回" />
	
	
   </form>
   </c:forEach>
 
</body>
</html>