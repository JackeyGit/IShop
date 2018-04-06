<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="css/video-js.css" rel="stylesheet">
<link href="css/video-item.css" rel="stylesheet">
<script src="js/videojs-ie8.min.js"></script>
<script src="js/video.min.js"></script>

<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="player/images/swfobject.js"></script>
</head>
<body>

	<div class="topbar">
		<div class="sub-1">
			<img src="images/lol.png" />
		</div>

		<div class="sub-3">
			<ul class="nav-x">
				<li class="item">
					<a class="normal" href="${pageContext.request.contextPath}/Index.jsp">首页</a> &nbsp; 
					<a class="normal" href="">看过</a> &nbsp;</li>
			</ul>

			<div class="searhBox">
				<form action="#">
					<input results="s" type="search" class="serinp"
						placeholder="输入关键字">
					<button class="btn-search ">搜索</button>
				</form>
			</div>
		</div>
		<div class="sub-2">
			<ul class="nav-x">
			
			<c:if test="${empty sessionScope.user.username}">
                   			<li class="item">
	                    	<a class="normal" href="${pageContext.request.contextPath}/LogReg.jsp">登录</a>
	                    	<span>/</span>
	                    	<a class="normal" href="${pageContext.request.contextPath}/LogReg.jsp">注册</a>
                    		</li>
                   </c:if>
                   <c:if test="${!empty sessionScope.user.username}">
                   		<li class="item">
	                    	<a class="normal" href="${pageContext.request.contextPath}/UserCenter.action">${sessionScope.user.username}</a>
                    		</li>
                   			<li class="line"></li>
                       		<li class="item"><a href="${pageContext.request.contextPath}/logout.action">退出</a></li>
				</c:if> 	 
				<!-- <li class="item"><a class="normal" href="">登陆</a> <span>/</span>
					<a class="normal" href="">注册</a></li> -->
			</ul>
		</div>
	</div>
	<div class="video">
		<div class="video_play">
<!-- 		
	<video width="1080" height="640" controls>
    	<source src="BYSJ/UploadFile\videos\0.15096980018.51CTO学院-第4-2讲：Oracle的认证方式.mp4" type="video/mp4">
    	<source src="BYSJ/UploadFile\videos\0.15096980018.51CTO学院-第4-2讲：Oracle的认证方式.mp4" type="video/ogg">
    您的浏览器不支持 video 标签。
</video>
		 -->
		
			<div  id="CuPlayer"></div>
		</div>
		<div class="video_info">
			<div class="video_title">
				<ul>
					<li><a href="#">我的标题</a>
					</li>
				</ul>
			</div>
			<div id="itemul" class="video_item">
				<ul>
					<c:forEach items="${requestScope.videos}" var="item"
						varStatus="status">
						<li id="list"><a hf="<%=basePath%>${item.vurl}">${status.index+1}</a>
						</li>
					</c:forEach>

				</ul>


			</div>
		</div>
	</div>

	<script type="text/javascript">
$("#list a").click(function(){
 var $href=$(this).attr("hf");
 alert($href);
var so = new SWFObject("${pageContext.request.contextPath}/player/CuPlayerMiniV4.swf","CuPlayerV4","1080","640","9","#000000");
	so.addParam("allowfullscreen","true");
	so.addParam("allowscriptaccess","always");
	so.addParam("wmode","opaque");
	so.addParam("quality","high");
	so.addParam("salign","lt");
	so.addVariable("CuPlayerSetFile","${pageContext.request.contextPath}/player/CuPlayerSetFile.xml");
	so.addVariable("CuPlayerFile",$href); //视频资源路径，可以动态赋值
	so.addVariable("CuPlayerImage","${pageContext.request.contextPath}/player/images/start.jpg");//视频略缩图,本图片文件必须正确
	so.addVariable("CuPlayerWidth","1080"); //视频宽度
	so.addVariable("CuPlayerHeight","640"); //视频高度
	so.addVariable("CuPlayerAutoPlay","yes"); //是否自动播放
	so.write("CuPlayer");
});
</script>


</body>
</html>
