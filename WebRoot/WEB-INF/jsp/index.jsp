<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title>���ߵ�������ϵͳ</title>
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
    <!-- ͷ�����򣨿����layui���е�ˮƽ������ -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="showNotice" target="content">�����б�<span class="layui-badge">new</span></a></li>
      <li class="layui-nav-item">&emsp;&emsp;</li>
      <li class="layui-nav-item"><a href="register" target="content">ע�����Ա</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="images/0.jpg" class="layui-nav-img">
   ${admin.a_name}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">�ҵ�����</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="loginout">ע��</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- ��ർ�����򣨿����layui���еĴ�ֱ������ -->
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
       <li class="layui-nav-item"><a href="listAdmin" target="content">ϵͳ����Ա</a></li>
       <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;">��Ϣ�鿴</a>
          <dl class="layui-nav-child">
            <dd><a href="selectAllDoctor" target="content">ҽ����Ϣ</a></dd>
            <dd><a href="selectAllPatient" target="content">������Ϣ</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="notice?id=${admin.id }" target="content">��������</a></li>
      </ul>
    </div>
  </div>
  <div class="layui-body">
  
  <!-- ����չʾ�� -->
  <div style="border:1px solid #ccc;font-size:24px">
  <p>${notice.message}</p>
  </div>
    <!-- ������������ -->
    <div style="padding: 15px; text-align:center;"><iframe  src="images/yiyuan.jpg" frameborder="0" id="demoAdmin" name="content" style="width: 100%; height: 500px;line-height:500px"></iframe> </div>
    <div></div>
  </div>
  
  <div class="layui-footer" style="text-align:center;">
    <!-- �ײ��̶����� -->
   <b>����֧�� Lone Walker &copy;www.wang2988.top</b>
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