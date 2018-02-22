<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
	  <script type="text/javascript" src="static/js/ProductC.js"></script>
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
						<a href='getlist?index=1' class="list-group-item" id="ol"><span class="glyphicon glyphicon-th-large" ></span> 商品管理</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-folder-open"></span> 商品入库</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-list-alt"></span> 销售记录</a>
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-flag"></span> 活动</a>
		  			</div>
     	 		</div>
      			 
      			 
      			 <!-- 右边顶部 -->   
      			 <div class="col-md-10" id="zj" style="background-color: #F1F3F4">
     	 			<!--右边顶部侧边栏  -->
		  			<div style="float: right;">
		  				<ul class="nav nav-pills" >
						  <li><a >欢迎您，<span class="us">${uname }</span></a></li>
						  <li><a href="index.jsp">退出</a></li>
						</ul>
		  			</div><br><br>
		  		  </div>
		  		<!-- 右边内容栏 -->
		  		<div class="btn-group" style="float:left;">
				    <button type="button" class="btn btn-default" style="border: 0px;">商品名称</button>
				    <input class="btn btn-default" id="product_name" type="text" value=""  style="width: 140px;">
				    <button type="button" class="btn btn-default" style="border: 0px;margin: 0px 20px;">进价</button>
				    <input class="btn btn-default" id="product_purchase" type="text" value=""  style="width: 140px;">
				    <button type="button" class="btn btn-default" style="border: 0px;margin: 0px 20px;">售价</button>
				    <input class="btn btn-default" id="product_sell" type="text" value=""  style="width: 140px;">
				    <button type="button" class="btn btn-default" id="addO" style="border: 0px;background-color:green;margin: 0px 0px 0px 100px;width: 140px;color:white;">添加</button>
				 	<br>
				 	
				  </div>
				  <div class="btn-group" style="float:left;">
		  		    <button type="button" class="btn btn-default" style="border: 0px;">商品单位</button>
				    <input class="btn btn-default" id="product_unit" type="text" value=""  style="width: 140px;">
				  </div>
		  		  <div class="col-md-10" style="background-color: #94B09D">
		  				<div style="float: right;">
			  				<ul class="nav nav-pills" id="produte_list">
							  <li style='width: 100px;'><a href="#">商品编号</a></li>
							  <li style='width: 115px;'><a href="#">商品名称</a></li>
							  <li><a href="#">单位</a></li>
							  <li><a href="#">进价(元)</a></li>
							  <li><a href="#">售价(元)</a></li>
							  <li><a href="#">库存</a></li>
							</ul>
		  				</div>
     	 		</div>
     	 		<!--商品列表栏  -->
     	 		<div class="addcolor">
		  		<c:forEach items="${li}" var="b">
		  		<div class='col-md-10'>
		  				<div style='float: right;'>
			  				<ul class='nav nav-pills' id='produte_list_color'>
							  <li style='width: 80px;'><a >${ b.product_number}</a></li>
							  <li style='width: 120px;'><a >${b.product_name}</a></li>
							  <li style='width: 78px;'><a >${b.product_unit}</a></li>
							  <li style='width: 78px;'><a >${b.product_purchase}</a></li>
							  <li style='width: 58px;'><a >${b.product_sell}</a></li>
							  <li style='width: 58px;'><a >${b.product_inventory}</a></li>
							</ul>
		  				</div>
     	 		 </div>
     	 		 
		  		</c:forEach>
		  		</div>
     	 	 	<!-- 1 2 3 4 5 6 -->
	     	 	 <ul class="pagination" style="float:right;position: absolute;bottom:0px;left:800px;">
				    <li><a href="getlist?index=${page.index-1 }">上一页</a></li>
				 	 <c:forEach  begin="${page.pagefirst}" end="${page.pagelast}" varStatus="v">
				    	 <li ><a href='getlist?index=${v.index}'>${v.index}</a></li>
				     </c:forEach>
				    <li><a href='getlist?index=${page.index + 1 }'>下一页</a></li>
				</ul> 
				<!--右侧下方内容栏结束  -->
		</div>
		
		
	</div>

  	
  		
  	</body>
  
</html>
