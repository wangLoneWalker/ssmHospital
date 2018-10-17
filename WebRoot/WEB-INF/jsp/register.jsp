<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册管理员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="css/login.css" />
  </head>
  <body class="beg-login-bg">
   <div class=" beg-login-box">
			<header>
				<h1>管理员注册</h1>
			</header>
			<div class="beg-login-main">
				<form action="addAdmin" class="layui-form" method="post">
				<input name="__RequestVerificationToken" type="hidden"  />
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe66f;</i>
                    </label>
						<input type="text" name="a_name" id="a_name"  placeholder="输入用户名" class="layui-input">
					</div>
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe673;</i>
                    </label>
						<input type="password" name="a_word" id="a_word"   placeholder="请输入密码" class="layui-input">
					</div>
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe678;</i>
                    </label>
						<input type="text" name="a_phone" id="a_phone" placeholder="请输入手机" class="layui-input">
					</div>
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe672;</i>
                    </label>
						<input type="text" name="a_email" id="a_email" placeholder="请输入邮箱" class="layui-input">	
					</div>
					
						
		<div>
		<input class="layui-btn  beg-pull-left" type="submit" value="提交" size="40"/> 
		<input class="layui-btn  beg-pull-right" type="reset" value="取消" size="40"/></div>
						<div class="beg-clear"></div>
					</div>
				</form>
			</div> 
		</div>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
  </body>
</html>
