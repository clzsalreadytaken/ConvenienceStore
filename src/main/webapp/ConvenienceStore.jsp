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
	  <link rel="stylesheet" href="static/css/ConvenienceStore.css" type="text/css"></link>
	  <script type="text/javascript" src="static/js/bootstrap.js"></script>
	  <script type="text/javascript" src="static/js/jquery.min.js"></script>
	  <script type="text/javascript" src="static/js/ConvenienceStore.js"></script>
  </head>
  	<body>
  		<div class="container" style="float:left;">
  		 	<div class="row" style="position: relative;">
     	 		<div class="col-md-2" style="float: left;height: 600px;background-color: #2B2C30">
     	 			<!--左边侧边栏  -->
		  			<div id="color_black">
		  				
		  				<a href="#" class="list-group-item" style="height: 100px;font-size:26px;">
		  				<img src="static/img/haozailai.jpg" style="width: 50px;" ></img>
		  				  好再来<br>
		  				  <span  style="float:right;font-size: 5px;">后台管理系统</span>
						</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-shopping-cart"></span> 商品销售</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-th-large"></span> 商品管理</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-folder-open"></span> 商品入库</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-list-alt"></span> 销售记录</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-flag"></span> 活动</a>
		  			</div>
     	 		</div>
      			 
      			 
      			 <!-- 右边顶部 -->   
      			 <div class="col-md-10" style="background-color: #F1F3F4">
     	 			<!--右边顶部侧边栏  -->
		  			<div style="float: right;">
		  				<ul class="nav nav-pills" >
						  <li><a href="#">欢迎您，admin</a></li>
						  <li><a href="#">消息</a></li>
						  <li><a href="#">退出</a></li>
						</ul>
		  			</div><br><br>
		  		  </div>
		  		<!-- 右边内容栏 -->
		  			
		  			
    			  <div class="btn-group" style="float:left;">
				    <button type="button" class="btn btn-default" style="border: 0px;">商品编号</button>
				    <input class="btn btn-default" type="text" value=""  style="width: 140px;">
				    <button type="button" class="btn btn-default" style="border: 0px;margin: 0px 20px;">商品</button>
				    <input class="btn btn-default" type="text" value=""  style="width: 140px;">
				    <button type="button" class="btn btn-default" style="border: 0px;margin: 0px 20px;">数量</button>
				    <input class="btn btn-default" type="text" value=""  style="width: 140px;">
				    <button type="button" class="btn btn-default" style="border: 0px;background-color:green;margin: 0px 0px 0px 100px;width: 140px;color:white;">添加</button>
				  </div>
		  			
		  		  <div class="col-md-10" style="background-color: #94B09D">
		  				<div style="float: right;">
			  				<ul class="nav nav-pills" id="produte_list">
							  <li><a href="#">商品编号</a></li>
							  <li><a href="#">商品类别</a></li>
							  <li><a href="#">商品名称</a></li>
							  <li><a href="#">单位</a></li>
							  <li><a href="#">进价</a></li>
							  <li><a href="#">售价</a></li>
							  <li><a href="#">库存</a></li>
							</ul>
		  				</div>
     	 		</div>
     	 		<!--商品列表栏  -->
     	 	 <div class="addcolor">
     	 		<div class="col-md-10" >
		  				<div style="float: right;">
			  				<ul class="nav nav-pills" id="produte_list_color">
							  <li><a href="#">商品编号</a></li>
							  <li><a href="#">商品类别</a></li>
							  <li><a href="#">商品名称</a></li>
							  <li><a href="#">单位</a></li>
							  <li><a href="#">进价</a></li>
							  <li><a href="#">售价</a></li>
							  <li><a href="#">库存</a></li>
							</ul>
		  				</div>
     	 		 </div>
     	 		 <div class="col-md-10" >
		  				<div style="float: right;">
			  				<ul class="nav nav-pills" id="produte_list_color">
							  <li><a href="#">商品编号</a></li>
							  <li><a href="#">商品类别</a></li>
							  <li><a href="#">商品名称</a></li>
							  <li><a href="#">单位</a></li>
							  <li><a href="#">进价</a></li>
							  <li><a href="#">售价</a></li>
							  <li><a href="#">库存</a></li>
							</ul>
		  				</div>
     	 		 </div>
     	 		 <div class="col-md-10" >
		  				<div style="float: right;">
			  				<ul class="nav nav-pills" id="produte_list_color">
							  <li><a href="#">商品编号</a></li>
							  <li><a href="#">商品类别</a></li>
							  <li><a href="#">商品名称</a></li>
							  <li><a href="#">单位</a></li>
							  <li><a href="#">进价</a></li>
							  <li><a href="#">售价</a></li>
							  <li><a href="#">库存</a></li>
							</ul>
		  				</div>
     	 		 </div>
     	 		 
     	 	 </div>
     	 	 	
    			<div class="btn-group" style="float:left;position: absolute;bottom:20px;left:240px;">
				    <button type="button" class="btn btn-default">总计</button>
				    <input class="btn btn-default" type="text" value=""  style="width: 80px;">
				</div>
     	 	 	
     	 	 	<!-- 1 2 3 4 5 6 -->
	     	 	 <ul class="pagination" style="float:right;position: absolute;bottom:0px;left:800px;">
				    <li><a href="#">上一页</a></li>
				    <li class="active"><a href="#">1</a></li>
				    <li class="disabled"><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li><a href="#">下一页</a></li>
				</ul>
				<!--右侧下方内容栏结束  -->
		</div>
		
		
	</div>

  	
  		
  	</body>
  
</html>
