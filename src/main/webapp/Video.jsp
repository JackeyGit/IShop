<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Video.jsp' starting page</title>
    

  </head>
  
  <body>
   	
		<div class="video_play">
			<video id="my-video" class="video-js" height="640" width="1080" controls="controls" >
			<source src="${item.vurl}" type="video/mp4">
			<source src="${item.vurl}" type="video/webm">
			<source src="${item.vurl}" type="video/ogg">

		  </video>
		</div>	  
		 
  </body>
</html>
