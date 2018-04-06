<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>上传视频</title>

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
	<!--
        	作者：huangyiit@163.com
        	时间：2017-01-27
        	描述：
        -->

	<div class="regtitle">视频上传</div>
	<div class="reg">
		<form id="up" action="${pageContext.request.contextPath}/addVideo.action" method="post" enctype="multipart/form-data">

		<input type="hidden" name="vcoll" value="${sessionScope.videoColl.vcid}"/>
		<p>
			<input type="text" placeholder="视频名称"  class="inputstyle1" name="vname" style="vertical-align:middle;"><input type="file" name="vurl" class="inputstyle1">
		</p>
		</br>
		<p>
			<input type="text" placeholder="视频名称"  class="inputstyle1" name="vname" style="vertical-align:middle;"><input type="file" name="vurl" class="inputstyle1">
		</p>
		</br>
		<p>
			<input type="text" placeholder="视频名称"  class="inputstyle1" name="vname" style="vertical-align:middle;"><input type="file" name="vurl" class="inputstyle1">
		</p>
		</br>
		<p>
			<input type="text" placeholder="视频名称"  class="inputstyle1" name="vname" style="vertical-align:middle;"><input type="file" name="vurl" class="inputstyle1">
		</p>
		</br>
		<p>
			<input type="text" placeholder="视频名称"  class="inputstyle1" name="vname" style="vertical-align:middle;"><input type="file" name="vurl" class="inputstyle1">
		</p>
		</br>
	
		
		<a onclick="document.getElementById('up').submit()"  class="RegBtnBlue">上传</a>
	
	</form>
	</div>


</body>
</html>














