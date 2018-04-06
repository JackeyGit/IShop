<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>云课堂-创建课程</title>
<script type="text/javascript" src="js/Ajax.js"></script>
<link rel="stylesheet" href="css/upload.css" type="text/css"></link>
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
	<div class="regtitle">创建课程</div>
<div class="reg" >
<form id="createVC" action="${pageContext.request.contextPath}/CreateVideoColl.action" method="post" enctype="multipart/form-data">	
课程名称： <input type="text" class="inputstyle1" name="vcname"><br><br>

课程介绍： <input type="text" class="inputstyle1" name="vcdescr"><br><br>

课程分类：	
	<select id="LevelOne" class="inputstyle">
		<option>选择主类别</option>
	</select><br><br> 
选择类别：
	<select id="LevelTwo" name="vctid"  class="inputstyle">
		<option value="3">选择分类别</option>
	</select><br><br>

课程展示：<input type="file" class="inputstyle1"name="vcpic">
<br><br>
课程价格：<input type="text" class="inputstyle1" name="vcprice">
<br><br>
<a onclick="document.getElementById('createVC').submit()"  class="RegBtnBlue">创建课程</a>
	
</form>
</div>
	


	<script type="text/javascript">
	window.onload = function() 
		{
			
			var Element = document.getElementById("LevelOne")
				var ajax = CreateAjax();
				if (ajax != null)
				 {
					
					var method = "GET";
					var url = "${pageContext.request.contextPath}/findOneLevel.action?time="
							+ new Date().getTime();
					ajax.open(method, url);
					ajax.send(null);
					//---------------------------------------------------
					ajax.onreadystatechange = function()
					 {
						if (ajax.readyState == 4)
						 {
							if (ajax.status == 200) 
							{
								//得到java格式的json
								var jsonJAVA = ajax.responseText;
								
								//把Java格式的json转化为js格式的json
								var jsonJS = eval("(" + jsonJAVA + ")");
								
								for(var i=0;i<jsonJS.length;i++)
								{
									var LevelOne =jsonJS[i].tname;
									var option = document.createElement("option");
									option.innerHTML = LevelOne;
									Element.appendChild(option);
								
								}
							}
						}
			}
		}
	}	
</script>


<script type="text/javascript">
document.getElementById("LevelOne").onchange = function()
 {
 
 
 
			var LevelTwoElement = document.getElementById("LevelTwo");
			LevelTwoElement.options.length = 1;
			/* var LevelThreeElement = document.getElementById("LevelThree");
			LevelThreeElement.options.length = 1; */
			var LevelOne = this[this.selectedIndex].innerHTML;
			
			if ("选择类别" != LevelOne)
			 {
				var ajax = CreateAjax();
				if (ajax != null) 
				{
					var method = "POST";
					var url = "${pageContext.request.contextPath}/find2Type.action?time="
							+ new Date().getTime();
					ajax.open(method, url);
					//NO3)
					ajax.setRequestHeader("content-type",
							"application/x-www-form-urlencoded")
					//NO4)
					var content = "name=" + LevelOne;
				
					ajax.send(content);
					//---------------------------------------------------
					ajax.onreadystatechange = function() 
					{
						if (ajax.readyState == 4)
						 {
							if (ajax.status == 200)
							 {
								//得到java格式的json
								var jsonJAVA = ajax.responseText;
								
								//把Java格式的json转化为js格式的json
								var jsonJS = eval("(" + jsonJAVA + ")");
							
								
								//遍历去除数据
								for(var i=0;i<jsonJS.length;i++)
								{
									var LevelTwo =jsonJS[i].tname;
									var id=jsonJS[i].tid;
									var option = document.createElement("option");
									option.innerHTML = LevelTwo;
									LevelTwoElement.appendChild(option);
									option.value=id;
								}
							}
						}
					}
				
			}
		}
}

</script>

<!-- <script type="text/javascript">

document.getElementById("LevelTwo").onchange = function() {

	var id;


			var LevelThreeElement = document.getElementById("LevelThree");
			LevelThreeElement.options.length = 1;
			var LevelTwo = this[this.selectedIndex].innerHTML;

			if ("选择分类别" != LevelTwo) {

				var ajax = CreateAjax();
				if (ajax != null) 
				{
					var method = "POST";
					var url = "${pageContext.request.contextPath}/find2Type.action?time="
							+ new Date().getTime();
					ajax.open(method, url);
					//NO3)
					ajax.setRequestHeader("content-type",
							"application/x-www-form-urlencoded")
					//NO4)
					var content = "name=" + LevelTwo;
					
					ajax.send(content);
					//---------------------------------------------------
					ajax.onreadystatechange = function() 
					{
						if (ajax.readyState == 4)
						 {
							if (ajax.status == 200)
							 {
								//得到java格式的json
								var jsonJAVA = ajax.responseText;
								
								//把Java格式的json转化为js格式的json
								var jsonJS = eval("(" + jsonJAVA + ")");
							
								
								//遍历去除数据
								for(var i=0;i<jsonJS.length;i++)
								{
									var LevelThree =jsonJS[i].tname;
									var id=jsonJS[i].tid;
									
									var option = document.createElement("option");
									option.innerHTML = LevelThree;
									LevelThreeElement.appendChild(option);
									option.value=id;
								}
							}
						}
					}
				
			}
		}
}


</script> -->




</body>
</html>
