<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布公告</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="css/login.css" />
  </head>
  
  <body class="beg-login-bg" background="images/host.jpg">
    <center>
    <form method="post" action="saveNotice" width="1000px">
  <div style="font-size:24px;width:100%;">
  <label style="color:red">公告标题:</label>
  <input type="text" name="title" placeholder="输入标题" style="border-radius: 5px; outline-style: none;">
  <input type="hidden" value="${id }" name="sendid">
  </div>
  <textarea rows="10" cols="70" class="ckeditor"  id="editor1" name="message"></textarea>
      <script type="text/javascript">CKEDITOR.replace('editor1');</script>
    <input type="submit" value="发布公告"  class="layui-btn layui-btn-normal" style="margin-top:10px;"/>
    </form>
    </center>
  </body>
</html>
