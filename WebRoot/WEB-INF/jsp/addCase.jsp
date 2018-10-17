<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加病历</title>
    
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
  <legend>添加病历信息</legend>
  <div class="layui-field-box">
  <span style="color:red;">*</span>为必填项，注意填写！
  <a class="layui-btn layui-btn-primary" href="javascript:history.go(-1)">返回</a>
  </div>
</fieldset>
<form action="addCase" method="post">
	<table class="layui-table">
		<tr>
			<td>患者号:</td>
			<td><input type="text" name="c_pid" value="${pCase.pid }"/><label>*</label></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="c_pname" value="${pCase.pname }"/><label>*</label></td>
		</tr>
		<tr>
			<td>状态：</td>
			<td><input type="text" name="pstate"/><label>*</label></td>
		</tr>
		<tr>
			<td>主治医师：</td>
			<td><input type="text" name="p_dname"/><label>*</label></td>
		</tr>
		<tr>
			<td>诊断结果：</td>
			<td><input type="text" name="p_result"/><label>*</label></td>
		</tr>
		<tr>
			<td>建档时间：</td>
			<td><input type="text" name="pintime" lay-verify="date" id="date" placeholder="yyyy-MM-dd"/><label>*</label></td>
		</tr>
		<tr><td><button class="layui-btn layui-btn-normal">添加</button></td>
		<td><button class="layui-btn layui-btn-normal" type="reset" >重置</button></td>
		</tr>
	</table>
	</form>
	<script type="text/javascript" src="plugins/layui/layui.js" charset="utf-8"></script>
	<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //执行一个laydate实例
  laydate.render({
    elem: '#date' //指定元素
  });
});
</script>
  </body>
</html>
