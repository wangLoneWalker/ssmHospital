<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加管理员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <center>
   <h2>添加管理员</h2>
    <form action="addAdmin" method="post">
    用户名：<input type="text" name="a_name">
  密码：  <input type="password" name="a_word">
  电话  <input type="text" name="a_phone">
    邮箱<input type="text" name="a_email">
    创建时间<input type="text" name="createtime">
   <button>添加</button>
    </form>
  </center>
  </body>
</html>
