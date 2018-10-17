<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>管理员信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css">
</head>
<body>
	<table class="layui-table">
		<tr>
			<th>ID</th>
			<th>姓名</th>
			<th>密码</th>
			<th>手机</th>
			<th>邮箱</th>
			<th>创建时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${admin}" var="admin" varStatus="st">
			<tr>
				<td>${admin.id }</td>
				<td>${admin.a_name}</td>
				<td>${admin.a_word}</td>
				<td>${admin.a_phone }</td>
				<td>${admin.a_email }</td>
				<td>${admin.createtime }</td>
				<td> <a class="layui-btn layui-btn-xs" href="editAdmin?id=${admin.id}">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" href="deleteAdmin?id=${admin.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<div style="text-align:center">
        <a href="listAdmin?start=0">首  页</a>
        <a href="listAdmin?start=${page.start-page.count}">上一页</a>
        <a href="listAdmin?start=${page.start+page.count}">下一页</a>
        <a href="listAdmin?start=${page.last}">末  页</a>
    </div>
</body>
</html>
