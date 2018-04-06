<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reg.css" type="text/css"></link>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.js"></script>
</head>

<body>

	<div class="topbar">

		<div class="sub-2">
			<ul class="nav-x">


				<li class="item"><a href="${pageContext.request.contextPath}/index.jsp">首页</a>
				</li>
				<li class="line"></li>
				<li class="item"><a class="normal" href="${pageContext.request.contextPath}/Login.jsp">登录</a> <i>|</i> <a
					class="normal" href="${pageContext.request.contextPath}/Register.jsp">注册</a></li>

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

	<div class="regtitle">管理员登陆</div>
	<div class="reg">
		<form id="reg" action="${pageContext.request.contextPath}/adminLogin.action" method="post">

		<p>
			<input type="text" name="name" placeholder="账号"
				class="inputstyle" />
		</p>

		<p>
			<input type="password" name="password" placeholder="密码"
				class="inputstyle" />
		</p>
	

	
	
		<a onclick="document.getElementById('reg').submit()"  class="RegBtnBlue">登陆</a>
	
	</form>
	</div>
	

</body>
</html>
