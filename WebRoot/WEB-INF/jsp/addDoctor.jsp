<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>添加医生信息</title>

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
  <legend>添加医生信息</legend>
  <div class="layui-field-box">
  <span style="color:red;">*</span>为必填项，注意填写！
  </div>
</fieldset>
<form action="addDoctor" method="post">
	<table class="layui-table">
		<tr>
			<td>医号:</td>
			<td><input type="text" name="did"/><label>*</label></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="dname"/><label>*</label></td>
		</tr>
		<tr>
			<td>性别：</td>
			<td><input type="text" name="dsex"/><label>*</label></td>
		</tr>
		<tr>
			<td>学历：</td>
			<td><input type="text" name="record"/><label>*</label></td>
		</tr>
		<tr>
			<td>籍贯：</td>
			<td><input type="text" name="national"/><label>*</label></td>
		</tr>
		<tr>
			<td>政治面貌：</td>
			<td><input type="text" name="political"/><label>*</label></td>
		</tr>
		<tr>
			<td>部门：</td>
			<td><input type="text" name="depart"/><label>*</label></td>
		</tr>
		<tr>
			<td>联系方式：</td>
			<td><input type="text" name="tel"/><label>*</label></td>
		</tr>
		<tr>
			<td>入职时间：</td>
			<td><input type="text" name="intime" placeholder="yyyy-MM-dd"><label>*</label></td>
		</tr>
		<tr><td><button class="layui-btn layui-btn-normal">添加</button></td>
		<td><button class="layui-btn layui-btn-normal" type="reset" >重置</button></td>
		</tr>
	</table>
	</form>
</body>
</html>
