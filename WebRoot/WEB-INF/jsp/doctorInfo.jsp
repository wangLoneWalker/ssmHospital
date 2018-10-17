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

<title>医生信息</title>

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
  <legend>医生信息页面>></legend>
  <div class="layui-field-box">
   <a class="layui-btn layui-btn-normal" href="addDoc">添加</a>
  </div>
</fieldset>
	<table class="layui-table">
		<tr>
			<th>ID</th>
			<th>姓名</th>
			<th>性别</th>
			<th>学历</th>
			<th>籍贯</th>
			<th>政治面貌</th>
			<th>部门</th>
			<th>联系方式</th>
			<th>入职时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${doctor}" var="d" varStatus="Status">
		<tr>
			<td>${d.did}</td>
			<td>${d.dname }</td>
			<td>${d.dsex }</td>
			<td>${d.record }</td>
			<td>${d.national }</td>
			<td>${d.political }</td>
			<td>${d.depart }</td>
			<td>${d.tel }</td>
			<td>${d.intime }</td>
			<td> <a class="layui-btn layui-btn-xs" href="editDoctor?id=${d.id }">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" href="delDoctor?id=${d.id }">删除</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>
