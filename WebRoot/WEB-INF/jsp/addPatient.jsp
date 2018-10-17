<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加患者信息</title>
    
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
  <legend>添加患者信息</legend>
  <div class="layui-field-box" style="font-size:24px">
  <span style="color:red;">*</span>为必填项，注意填写！<br />
  </div>
</fieldset>
<form action="addPatient" method="post">
	<table class="layui-table">
		<tr>
			<td>患者编号:</td>
			<td><input type="text" name="pid"/><label>*</label></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="pname"/><label>*</label></td>
		</tr>
		<tr>
			<td>性别：</td>
			<td><input type="text" name="psex"/><label>*</label></td>
		</tr>
		<tr>
			<td>年龄：</td>
			<td><input type="text" name="pold"/><label>*</label></td>
		</tr>
		<tr>
			<td>住址：</td>
			<td><input type="text" name="paddress"/><label>*</label></td>
		</tr>
		<tr><td><button class="layui-btn layui-btn-normal">添加</button></td>
		<td><button class="layui-btn layui-btn-normal" type="reset" >重置</button></td>
		</tr>
	</table>
	</form>
  </body>
</html>
