<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>病历信息修改</title>
    
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
  <legend>病历信息修改页面</legend>
  <div class="layui-field-box">
   <a class="layui-btn layui-btn-normal" href="">修改影像</a>
  </div>
</fieldset>
<form action="updateCase" method="post">
<input type="hidden" value="${pCase.id}" name="id">
<table class="layui-table">
		<tr>
		<td>患者编号</td><td><input class="layui-input" value="${pCase.c_pid }" name="c_pid"/></td></tr>
		<tr><td>姓名</td><td><input class="layui-input" value="${pCase.c_pname}" name="c_pname"/></td></tr>		
		<tr><td>状态</td><td><input class="layui-input" value="${pCase.pstate}" name="pstate"/></td></tr>		
		<tr><td>主治医师</td><td><input class="layui-input" value="${pCase.p_dname }" name="p_dname"/></td></tr>
		<tr><td>诊断描述</td><td><input class="layui-input" value="${pCase.p_result }" name="p_result"/></td></tr>
		<tr><td>建档时间</td><td><input class="layui-input" value="${pCase.pintime }" name="pintime"/></td></tr>
		<tr><td><button class="layui-btn layui-btn-normal">添加</button></td>
		<td><button class="layui-btn layui-btn-normal" type="reset" >重置</button></td></tr>
	</table>
</form>
  </body>
</html>
