<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>患者档案管理系统</title>
    <link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
    <!-- 
     <script type="text/javascript">
		window.onload=function(){
		  if(window!=window.parent){
		  window.parent.location.href="${pageContext.request.contextPath}/index.jsp";
		  }
		}
		</script>
     -->
    </head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo"><img alt="logo" src="images/logo.jpg" height="60px"></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="showNotice" target="content">公告列表<span class="layui-badge">new</span></a></li>
      <li class="layui-nav-item">&emsp;&emsp;</li>
      <li class="layui-nav-item"><a href="register" target="content">注册管理员</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="images/0.jpg" class="layui-nav-img">
   ${admin.a_name}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">我的资料</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="loginout">注销</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
       <li class="layui-nav-item"><a href="listAdmin" target="content">系统管理员</a></li>
       <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;">信息查看</a>
          <dl class="layui-nav-child">
            <dd><a href="selectAllDoctor" target="content">医生信息</a></dd>
            <dd><a href="selectAllPatient" target="content">病人信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="notice?id=${admin.id }" target="content">发布公告</a></li>
      </ul>
    </div>
  </div>
  <div class="layui-body">
  
  <!-- 公告展示区 -->
  <div style="border:1px solid #ccc;font-size:24px">
  <p>${notice.message}</p>
  </div>
    <!-- 内容主体区域 -->
    <div style="padding: 15px; text-align:center;"><iframe  src="images/yiyuan.jpg" frameborder="0" id="demoAdmin" name="content" style="width: 100%; height: 500px;line-height:500px"></iframe> </div>
    <div></div>
  </div>
  
  <div class="layui-footer" style="text-align:center;">
    <!-- 底部固定区域 -->
   <b>技术支持 Lone Walker &copy;www.wang2988.top</b>
  </div>
</div>
<script src="plugins/layui/layui.js"></script>
<script>
layui.use('element', function(){
  var element = layui.element;
  });
</script>
</body>
</html>