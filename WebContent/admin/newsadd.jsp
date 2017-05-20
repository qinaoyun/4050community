<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hello World</title>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
function upperCase()
{
var x=document.getElementById("firstDirectory").value
if(x=="就业"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("全职","全职")); 
	   document.getElementById("secondDirectory").options.add(new Option("兼职","兼职")); 
}
   if(x=="健康"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("养生","养生")); 
	   document.getElementById("secondDirectory").options.add(new Option("饮食","饮食")); 
	   document.getElementById("secondDirectory").options.add(new Option("疾病","疾病")); 
   }
 if(x=="时尚"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("美容","美容")); 
	   document.getElementById("secondDirectory").options.add(new Option("美体","美体")); 
	   document.getElementById("secondDirectory").options.add(new Option("着装","着装")); 
	   document.getElementById("secondDirectory").options.add(new Option("医美","医美")); 
}
 if(x=="情感"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("情爱","情爱")); 
	   document.getElementById("secondDirectory").options.add(new Option("美体","美体")); 
	   document.getElementById("secondDirectory").options.add(new Option("婆媳","婆媳")); 
	   document.getElementById("secondDirectory").options.add(new Option("单身","单身")); 
	   document.getElementById("secondDirectory").options.add(new Option("亲子","亲子")); 
}
 if(x=="教育"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("出国","出国")); 
	   document.getElementById("secondDirectory").options.add(new Option("中小学","中小学")); 
	   document.getElementById("secondDirectory").options.add(new Option("高中","高中")); 
	   document.getElementById("secondDirectory").options.add(new Option("继续教育","继续教育")); 
	  
}
 if(x=="旅游"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("国内","国内")); 
	   document.getElementById("secondDirectory").options.add(new Option("出境","出境")); 
	 
}
 if(x=="艺术"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("音乐","音乐")); 
	   document.getElementById("secondDirectory").options.add(new Option("摄影","摄影")); 
	   document.getElementById("secondDirectory").options.add(new Option("美术","美术")); 
	   document.getElementById("secondDirectory").options.add(new Option("书法","书法")); 
}
 if(x=="杂谈"){
	   document.getElementById("secondDirectory").options.length = 0;
	   document.getElementById("secondDirectory").options.add(new Option("杂谈","杂谈")); 
}
}
 </script>
</head>
<body>  
   <form action="../newsadd.do" method="post" enctype="multipart/form-data">
   <table style="border:1px solid blue">
   <tr>
   <th>所属区域</th>
   <td>
   <select name="area">
      <option value="南京">南京</option>
      <option value="南京">无锡</option>
      <option value="南京">徐州</option>
      <option value="南京">常州</option>
      <option value="南京">苏州</option>
      <option value="南京">南通</option>
      <option value="南京">连云港</option>
      <option value="南京">淮安</option>
      <option value="南京">盐城</option>
      <option value="南京">扬州</option>
      <option value="南京">镇江</option>
      <option value="南京">泰州</option>
      <option value="南京">宿迁</option>

   </select>
   <td>
   
   </tr>
   <tr>
   <th>一级目录</th>
   <td>
   <select name="firstDirectory" id="firstDirectory"onblur="upperCase()">
      <option value="杂谈">杂谈</option>
      <option value="就业">就业</option>
      <option value="健康">健康</option>
      <option value="时尚">时尚</option>
       <option value="情感">情感</option>
      <option value="教育">教育</option>
      <option value="旅游">旅游</option>
       <option value="艺术">艺术</option>

   </select>
   <td>
   
   </tr>
   <tr>
   <th>二级目录</th>
   <td>
   <select name="secondDirectory" id="secondDirectory">
    <option value="杂谈">杂谈</option>
   </select>
   <td>
   
   </tr>
   <tr>
   <th>帖子标题</th>
   <td><input type="text" name="title"/></td>
   </tr>
   <tr>
   <th>帖子图片</th>
   <td><input type="file" name="pic"/></td>
   </tr>
   <tr>
   <th>帖子内容</th>
  <td>
  <textarea id="editor" name="content" style="width:960px;height:300px;"></textarea>
   <script type="text/javascript">
    UE.getEditor('editor');
   </script>
  </td>
  </tr>
  
	</table>
	<input type="submit" class="formButton" value="确  定" />&nbsp;&nbsp;
	<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回" />
	
	
   </form>
</body>
 
</html>