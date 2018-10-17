<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>公告列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css">
</head>

<body>
	<table class="layui-table">
		<tr>
			<th>ID</th>
			<th>发布者</th>
			<th>标题</th>
			<th>主题</th>
			<th>发布时间</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${notice }" var="notice" varStatus="st">
	<tr>
			<td>${notice.id }</td>
			<td>${notice.admin.a_name}</td>
			<td>${notice.title }</td>
			<td>${notice.message }</td>
			<td>${notice.create_time}</td>
			<td> <a class="layui-btn layui-btn-danger layui-btn-xs" href="delNotice?${notice.id }">删除</a></td>
		</tr>
	</c:forEach>	
	</table>
</body>
</html>
