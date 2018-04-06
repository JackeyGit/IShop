<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>IShop 后台管理系统</title>
  
  <!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>-->
	 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <link href="css/bootstrap-table.min.css" rel="stylesheet" />
 <script src="js/jquery-3.2.1.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
 <script src="js/bootstrap-table.min.js"></script>
 <script src="js/locale/bootstrap-table-zh-CN.min.js"></script>
		<link rel='stylesheet' href='css/nv.css'>
	    <script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
   

</head>

<bod>
	
	<div class="topbar">
			
			<div class="container">
				<div class="row">
					<div class="col-lg-3 logo">
						
					</div>
					<div class="col-lg-9">
						
					</div>
				</div>
				
			</div>
		</div>
	
<div style="text-align:center;clear:both">

</div>
  <aside class="sidebar">
  <div id="leftside-navigation" class="nano">
    <ul class="nano-content">
      <li >
        <a href="#"><i class="fa fa-dashboard"></i><span class="l1title">主页</span></a>
      </li>
      <li class="sub-menu" >
        <a href="#"><i class="fa fa-cogs"></i><span class ="titlel1">用户管理</span><i class="arrow fa fa-angle-right pull-right"></i></a>
   		 <ul class="contentl1">
	          <li class="titlel2"><a href="#">所有用户</a></li>
	          <li class="titlel2"><a href="#">增加用户</a></li>
	          <li class="titlel2"><a href="#">增加用户</a></li>
	          <li class="titlel2"><a href="#">增加用户</a></li>
	         
        </ul>
      </li>
     
     <li class="sub-menu">
        <a href="#"><i class="fa fa-table"></i><span class="titlel1">产品管理</span><i class="arrow fa fa-angle-right pull-right"></i></a>
        <ul class ="contentl1">
          <li class="titlel2"><a href="#">商品管理</a></li>
          <li class="titlel2"><a href="#">分类管理</a></li>
          <li class="titlel2"><a href="#">配送管理</a></li>
        </ul>
      </li>
      
      </ul>
  </div>
</aside>
<div id="mainbody"></div>
<script>

$(".sub-menu").click(function(){
var div=$(this).find(".contentl1");
var hidiv=$(this).siblings().children(".contentl1");
if(div.css("display")!="none"){
   div.slideUp("slow");
}
else{
 div.slideDown("slow");
 hidiv.slideUp("slow");
}
});

$(".titlel2").click(function(e){
		$("#mainbody").load("UserList.jsp");
		$(this).css("background-color","#1B6D85");
		$(this).siblings().css("background-color","#23313f");
		e.stopPropagation();
});
</script>

</body>
</html>
