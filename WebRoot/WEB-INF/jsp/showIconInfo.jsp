<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>患者影像</title>
    
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
  <legend>患者影像页面>></legend>
  <div class="layui-field-box">
   <a class="layui-btn layui-btn-normal" href="getCase?pid=${icon.i_pid}">查看病历</a>
    <a class="layui-btn layui-btn-primary" href="javascript:history.go(-1)">返回</a>
  </div>
</fieldset>
	<table class="layui-table">
		<tr>
			<th>患者编号</th>
			<th>姓名</th>
			<th>描述</th>
			<th>图像</th>
			<th>建档时间</th>
			<th>操作</th>
		</tr>
		<tr>
			<td>${icon.i_pid }</td>
			<td>${icon.i_pname }</td>
			<td>${icon.detail }</td>
			<td><img title="${icon.detail }" style="width:100px;height:100px" src="${pageContext.request.contextPath }/upload/${icon.pic}"></td>
			<td>${icon.createtime }</td>
			<td> <a class="layui-btn layui-btn-xs" href="editIcon?i_pid=${icon.i_pid }">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" href="delIcon?id=${icon.id }">删除</a></td>
		</tr>
	</table>
  </body>
</html>
