<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改患者信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css">
  </head>
  
  <body>
   <fieldset class="layui-elem-field">
  <legend>患者信息修改页面</legend>
  <div class="layui-field-box">
   <a class="layui-btn layui-btn-normal" href="updateCase.jsp">修改病历</a>
   <a class="layui-btn layui-btn-normal" href="updateIcon.jsp">修改影像</a>
  </div>
</fieldset>
<form action="updatePatient" method="post">
<input type="hidden" value="${p.id}" name="id">
<table class="layui-table">
		<tr>
		<td>ID</td><td><input class="layui-input" value="${p.pid }" name="pid"/></td></tr>
		<tr><td>姓名</td><td><input class="layui-input" value="${p.pname}" name="pname"/></td></tr>		
		<tr><td>性别</td><td><input class="layui-input" value="${p.psex}" name="psex"/></td></tr>		
		<tr><td>年龄</td><td><input class="layui-input" value="${p.pold }" name="pold"/></td></tr>
		<tr><td>住址</td><td><input class="layui-input" value="${p.paddress }" name="paddress"/></td></tr>
		<tr><td><button class="layui-btn layui-btn-normal">添加</button></td>
		<td><button class="layui-btn layui-btn-normal" type="reset" >重置</button></td></tr>
	</table>
</form>
  </body>
</html>
