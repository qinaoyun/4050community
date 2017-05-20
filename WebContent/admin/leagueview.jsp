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
   
   <form action="leagueupdate.do" method="post" enctype="multipart/form-data">
   <input type="hidden" name="ID" value="${obj.ID}" />
   <table style="border:1px solid blue">
   <tr>
   <th>所属目录</th>
   <td>
   <select name="navigation">
      <c:set var="navigation" value="${obj.navigation}"/>
      <c:if test="${navigation=='风投基金' }">
      <option value="风投基金" selected="selected">风投基金</option>
      <option value="科技银行">科技银行</option>
      <option value="知识产权">知识产权</option>
      <option value="财务服务">财务服务</option>
      <option value="法律服务">法律服务</option>
      <option value="人力资源">人力资源</option>
      <option value="网站制作">网站制作</option>
      <option value="翻译服务">翻译服务</option>
      </c:if>
      <c:if test="${navigation=='科技银行' }">
      <option value="风投基金">风投基金</option>
      <option value="科技银行" selected="selected">科技银行</option>
      <option value="知识产权">知识产权</option>
      <option value="财政服务">财政服务</option>
      <option value="法律服务">法律服务</option>
      <option value="人力资源">人力资源</option>
      <option value="网站制作">网站制作</option>
      <option value="翻译服务">翻译服务</option>
      </c:if>
       <c:if test="${navigation=='知识产权' }">
      <option value="风投基金">风投基金</option>
      <option value="科技银行">科技银行</option>
      <option value="知识产权" selected="selected">知识产权</option>
      <option value="财务服务">财务服务</option>
      <option value="法律服务">法律服务</option>
      <option value="人力资源">人力资源</option>
      <option value="网站制作">网站制作</option>
      <option value="翻译服务">翻译服务</option>
      </c:if>
       <c:if test="${navigation=='财务服务' }">
      <option value="风投基金">风投基金</option>
      <option value="科技银行">科技银行</option>
      <option value="知识产权">知识产权</option>
      <option value="财务服务" selected="selected">财务服务</option>
      <option value="法律服务">法律服务</option>
      <option value="人力资源">人力资源</option>
      <option value="网站制作">网站制作</option>
      <option value="翻译服务">翻译服务</option>
      </c:if>
      <c:if test="${navigation=='财务服务' }">
      <option value="风投基金">风投基金</option>
      <option value="科技银行">科技银行</option>
      <option value="知识产权">知识产权</option>
      <option value="财务服务" selected="selected">财务服务</option>
      <option value="法律服务">法律服务</option>
      <option value="人力资源">人力资源</option>
      <option value="网站制作">网站制作</option>
      <option value="翻译服务">翻译服务</option>
      </c:if>
   </select>
   <td>
   </tr>
   <tr>
   <th>新闻标题</th>
   <td><input type="text" name="title" value="${obj.title}"/></td>
   </tr>
   <tr>
   <th>新闻图片</th>
   <td><input type="file" name="pic"/>
<%--    <c:set var="filepath" value="${obj.filepath }"/> --%>
<%--    <c:if test="${filepath!=null }"> --%>
<%--    <input type="hidden" name="pic" value="${obj.filepath }" /> --%>
<%--    </c:if> --%>
   </td>
   </tr>
   <tr>
   <th>新闻内容</th>
  <td>
  <textarea id="editor" name="content" style="width:960px;height:300px;">${obj.content}</textarea>
   <script type="text/javascript">
    UE.getEditor('editor');
   </script>
  </td>
  </tr>
  <tr>
  <th>设置</th>
   <td>
	<input type="checkbox" name="isVisible" value="true" checked="checked" />显示
	</td>
	</tr>
	</table>
	<input type="submit" class="formButton" value="确  定" />&nbsp;&nbsp;
	<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回" />
	
	
   </form>
   </c:forEach>
 
</body>
</html>