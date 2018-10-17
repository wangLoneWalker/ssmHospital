<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改管理员信息</title>
    
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
  <legend>修改管理员信息</legend>
  <div class="layui-field-box">
  <span style="color:red;">*</span>为必填项，注意填写！
  实际项目中表单项要进行验证，这里就不做验证了
  </div>
</fieldset>
<form action="updateAdmin" method="post">
	<table class="layui-table">
		<tr>
			<td>ID:</td>
			<td><input type="text" name="id" value="${admin.id }" readonly="readonly"/><label>*</label></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="a_name" value="${admin.a_name }"/><label>*</label></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="text" name="a_word" value="${admin.a_word }"/><label>*</label></td>
		</tr>
		<tr>
			<td>手机：</td>
			<td><input type="text" name="a_phone" value="${admin.a_phone }"/><label>*</label></td>
		</tr>
		<tr>
			<td>邮箱：</td>
			<td><input type="text" name="a_email" value="${admin.a_email }"/><label>*</label></td>
		</tr>
		<tr>
			<td>创建时间：</td>
			<td><input type="text" name="createtime" value="${admin.createtime }"/><label>*</label></td>
		</tr>
		<tr><td><button class="layui-btn layui-btn-normal">添加</button></td>
		<td><button class="layui-btn layui-btn-normal" type="reset" >重置</button></td>
		</tr>
	</table>
	</form>
  </body>
</html>
