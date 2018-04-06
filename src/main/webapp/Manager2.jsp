<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>后台管理</title>
	
  <link rel="stylesheet" href="css/admin.css" type="text/css"></link>
  <script type="text/javascript" src="js/infoAjax.js"></script>
  <script type="text/javascript" src="js/jquery-2.1.0.js"></script>
  </head>
   
<body>
<script type="text/javascript">
setInterval("time.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
</script>

<div id="top">
         
        <div id="topmenu">
	 			
	        <a  href="${pageContext.request.contextPath}/alogout.action">
	         <input type="button" value="安全退出" class="button">
	        </a>
	         <input type="button" value="个人中心" class="button">
         </div>   
         
               
    </div>
    <div id="leftmenu">
         
         <div id="menu">导航菜单</div>
         <div id="showMenu">
              <br>
         	 <div class="user" onclick="getAllUser()">用户管理</div>
         	  <hr>
	         <div class="video" onclick="getVideoColls()">课程管理</div>
	         <hr>
	          <div class="upload" onclick="CreateVideoColl()">视频管理</div> 
	         <hr>
	         <div class="System" onclick="SystemSetUp()">系统配置</div>	       	        
	         <hr>         
         </div>                      
   </div>
    <div id="center">
    <div id="centerTitle">
     <div id="centerTitle">
		    <div id="user">欢迎您：${sessionScope.admin.aname}</div>
		
	 <div id="time"></div>
     
    </div>
    <div id="centerShow">
          <iframe  src="${pageContext.request.contextPath}/getAllUser.action" width="100%" height="500px" scrolling="no" frameborder="0"  id="getAllUser"> </iframe>
          <iframe  src="${pageContext.request.contextPath}/getVideoColls.action" width="100%" height="500px" scrolling="no" frameborder="0"  id="getVideoColls"> </iframe>
           <iframe  src="${pageContext.request.contextPath}/CreateVideoColl.jsp" width="100%" height="500px" scrolling="no" frameborder="0"  id="CreateVideoColl"> </iframe>        
    </div>  
    </div>
    </div>
    <div id="footer">
<p>关于拏云|拏云联盟|投稿中心|招贤纳才|投资咨询|推广合作|法律声明|网站律师|联系我们|网站地图</p>
  <p>©2016-2016 NAYUN Corporation All Rights Reserved. 拏云教育版权<p>
</div>
</body>



</html>


