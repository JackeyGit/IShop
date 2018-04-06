<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>云课堂-视频课程</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/upload.css" type="text/css"></link>

</head>
<body>
	<div class="topbar">
		<div class="sub-2">
			<ul class="nav-x">
				<li class="item"><a href="${pageContext.request.contextPath}/Index.jsp">首页</a>
				</li>
				<li class="line"></li>
				

				<li class="item"><a href="">APP下载</a>
				</li>




			</ul>
		</div>

	</div>

	<!-- ------------------------------------------------------ -->

	<div class="regtitle">课程详情</div>
	<div class="reg">
		<p>
			<div  class="inputstyle1" > 视频集ID：${sessionScope.videoColl.vcid}</div>
		</p>
		<br>
		<p>
			<div  class="inputstyle1" >  视频集名称：${sessionScope.videoColl.vcname}</div>
		</p>
		<br>
		
			<div> 视频集图片：<img style="width:220px;height:150px;" src="${sessionScope.videoColl.vcpic}"></img></div>
		
	 <br>
	 <a style="text-de" class="RegBtnBlue" href="${pageContext.request.contextPath}/UploadVideo.jsp">上传视频到此课程中 </a> 
	</div>


</body>
</html>