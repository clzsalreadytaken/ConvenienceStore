<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  <link rel="stylesheet" href="static/css/bootstrap.css" type="text/css"></link>
  <link rel="stylesheet" href="static/css/index.css" type="text/css"></link>
  <script type="text/javascript" src="static/js/bootstrap.js"></script>
  <script type="text/javascript" src="static/js/jquery.min.js"></script>
  <script type="text/javascript" src="static/js/index.js"></script>
  </head>
  	
  <body class="bodyimg" style="clear:right;">
    <!-- <div class="jumbotron" style="float:left;clear:right;margin:100px 0px 0px 0px">
	  <h1>好再来便利店管理系统!</h1>
	  <p>...</p>
	  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
	</div> -->
	<!-- form表单 -->
	<form class="form-horizontal" role="form" style="margin:240px 0px 0px 500px;float:left;background-color: white;">
		<p style="height: 10px;"></p>
		 <div class="form-group" >
		    <label for="firstname" class="col-sm-4 control-label">用户名</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control" id="firstname" placeholder="请输入名字">
		    </div>
		  </div><br>
		  <div class="form-group">
		    <label for="firstpwd" class="col-sm-4 control-label">密码</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control" id="firstpwd" placeholder="请输入名字">
		    </div>
		  </div><br>
		<!--   <div class="form-group">
			    <label for="firstorder" class="col-sm-4 control-label">口令</label>
			    <div class="col-sm-7">
			      <input type="text" class="form-control" id="firstorder" placeholder="请输入口令">
			    </div>
			 </div><br> -->
		  
		   <!-- <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox">请记住我
        </label>
      </div>
    </div>
  </div><br> -->
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-10">
      <button type="button" id="login" class="btn btn-default">登录</button>
    </div>
  </div>
	</form>
  </body>
</html>
