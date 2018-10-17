<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>患者基本信息</title>
    
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
  <legend>患者信息页面>></legend>
  <div class="layui-field-box">
   <a class="layui-btn layui-btn-normal" href="addPat">添加</a>
   <br/>
   <p style="color: red;font-size:24px">添加病历和影像前请先查看是否已有，有就别添加了，懂我意思吧</p>
   <p style="color: red;font-size:24px">其实可以做判断的，有就返回提示已存在，但是我不想做了</p>
  </div>
</fieldset>
    <table class="layui-table">
		<tr>
			<th>ID</th>
			<th>姓名</th>
			<th>性别</th>
			<th>年龄</th>
			<th>住址</th>
			<th>病历</th>
			<th>影像</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${patient}" var="p" varStatus="st">
			<tr>
				<td>${p.pid }</td>
				<td>${p.pname}</td>
				<td>${p.psex}</td>
				<td>${p.pold }</td>
				<td>${p.paddress }</td>
				<td><a class="layui-btn layui-btn-normal" href="getCase?pid=${p.pid}">查看病历</a></td>
				<td><a class="layui-btn layui-btn-normal" href="getIcon?pid=${p.pid }">查看影像</a></td>
				<td> 
	<a class="layui-btn layui-btn-warm layui-btn-sm" href="insertCase?id=${p.id}">添加病历</a>
	<a class="layui-btn layui-btn-primary layui-btn-sm" href="addIcon?id=${p.id}">添加影像</a>
	<a class="layui-btn layui-btn-sm" href="editPatient?id=${p.id}">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-sm" href="deletePatient?id=${p.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
  </body>
</html>
