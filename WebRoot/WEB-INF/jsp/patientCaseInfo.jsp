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
    
    <title>患者病历信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global.css">

  </head>
  
  <body>
   <fieldset class="layui-elem-field">
  <legend>患者病历列表页面>></legend>
  <div class="layui-field-box">
   <a class="layui-btn layui-btn-normal" href="addPatientCase">添加</a>
   <a class="layui-btn layui-btn-normal" href="">查看影像</a>
  </div>
</fieldset>
	<table class="layui-table">
		<tr>
			<th>ID</th>
			<th>患者编号</th>
			<th>姓名</th>
			<th>状态</th>
			<th>主治医师</th>
			<th>诊断描述</th>
			<th>建档时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${patientCase}" var="c" varStatus="Status">
		<tr>
			<td>${c.id}</td>
			<td>${c.c_pid }</td>
			<td>${c.c_pname }</td>
			<td>${c.pstate }</td>
			<td>${c.p_dname }</td>
			<td>${c.p_result }</td>
			<td>${c.pintime }</td>
			<td> <a class="layui-btn layui-btn-xs" href="editCase?c_pid=${c.c_pid }">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" href="delCase?id=${c.id }">删除</a></td>
		</tr>
		</c:forEach>
	</table>
  </body>
</html>
