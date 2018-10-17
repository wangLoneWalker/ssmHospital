<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="css/login.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/yzm.js"></script>
  </head>
  <body class="beg-login-bg" background="images/host.jpg">
		<div class="beg-login-box">
			<header>
				<h1>登录</h1>
			</header>
			<div class="beg-login-main">
				<form action="getLogin" class="layui-form" method="post">
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe612;</i>
                    </label>
						<input type="text" name="a_name" id="loginusername"  placeholder="请输入登录名" class="layui-input"onkeydown=KeyDown()>
					</div>
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe642;</i>
                    </label>
						<input type="password" name="a_word" id="loginpassword"   placeholder="请输入密码" class="layui-input" onkeydown=KeyDown()>
						<label  style="color:red;" id="message"></label>
					</div>
 <div>
   <input id="t1" type="text" style="width:70%; height:35px; border:1.5px solid #F0F0F0" name="u" placeholder="点击验证码即可刷新" onblur="but()"onkeydown=KeyDown() />
   <span id="yzm" style="width:30%" onclick="createcode()"></span>
   </div>

		<div style="margin-top:10px">
		<input class="layui-btn  beg-pull-left" type="submit" name="btnsubmit" value="登录" id="lo" size="40" onclick="return check();"/></div> 
		<input class="layui-btn  beg-pull-right" type="reset" value="重置" size="40"/>
						<div class="beg-clear"></div>
					</div>
				</form>
				<!-- 表单结束 -->
			</div>
			<footer style="text-align:center;font-size:24px;margin-top:50px">
				<p> 技术支持:Lone Walker</p>
			</footer>
		</div>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script>
function KeyDown()
{
  if (event.keyCode == 13)
  {
    event.returnValue=false;
    event.cancel = true;
    Form1.btnsubmit.click();
  }
}
</script>

	</body>
</html>
