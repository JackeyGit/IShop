<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
				$(document).ready(function () {
							$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion           
							width: 'auto', //auto or any width like 600px
							fit: true   // 100% fit in a container
									});
								});
				   </script>

</head>
<body>






<!-- ----------------------------------------------------------- -->
<div class="main">
		<h2>欢迎来到HAP博客</h2>
	 <div class="sap_tabs">	
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
			  <ul class="resp-tabs-list">
			  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><div class="top-img"><img src="images/top-note.png" alt=""/></div><span>注 册</span></li>
				  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><div class="top-img"><img src="images/top-lock.png" alt=""/></div><span>登陆</span></li>
				<!--  <li class="resp-tab-item lost" aria-controls="tab_item-2" role="tab"><div class="top-img"><img src="images/top-key.png" alt=""/></div><span>找回密码</span></li>-->
				  <div class="clear"></div>
			  </ul>		
			  <!---->		  	 
			<div class="resp-tabs-container">
				
				<!--
                	作者：huangyiit@163.com
                	时间：2016-11-15
                	描述：选项卡1 注册页面
                -->
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					<div class="facts">
							<!--login1-->
						<div class="register">
							<form>
								<p>用户名:<input type="text" class="textstyle"  maxlength="32" ><span id="res"></span></p>
								<p>密　码:<input type="password" class="textstyle"  maxlength="32"></p>
								<p>邮　箱:<input type="text" class="textstyle" maxlength="50"  ></p>
								<p style="width:100%;">验证码:<input type="text" class="textstyle1"  maxlength="5" style="width:20%;vertical-align:middle;" name="CheckCode" id="cc" >&nbsp
								<img  src="Code.jsp" onclick="f()" id="aaa" style="width:25%;vertical-align:middle;height:50px">
								<span id="check" style=""></span></p>
								
								<div class="sign-up">
									<input class="rsstyle" type="reset"  value="清空">
									<input class="rsstyle" type="submit"  value="注册" >
									<div class="clear"> </div>
								</div>
							</form>

						</div>
					</div>
				</div>		
				<!--
                	作者：huangyiit@163.com
                	时间：2016-11-15
                	描述：选项卡2 登录页面
                -->
			 <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
					 	<div class="facts">
							 <div class="login">
							
							<form>
								<input type="text" class="text" ><a href="#" class=" icon email"></a>

								<input type="password" ><a href="#" class=" icon lock"></a>

								<div class="p-container">
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>记住密码</label>
									<div class="submit two">
									<input type="submit"  value="登陆" >
									</div>
									<div class="clear"> </div>
								</div>

							</form>
							
							<div class="buttons">
								<ul>
								    <li class="fb">
										<a href="#" class="hvr-bounce-to-bottom">QQ登陆</a>
									</li>
									<li class="twr">
										<a href="#" class="hvr-bounce-to-top">Sina</a>
									</li>
									<div class="clear"> </div>
								</ul>
							</div>
							
					</div>
				</div> 
			</div> 	
			
				         	
				         	
				        </div>	
				     </div>	
		        </div>
	        </div>
	     </div>

	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				<p>Copyright &copy; 2016  All rights  Reserved | Design by <a href="#">HAP博客</a></p>
		</div>
	</div>








<!-- 
		用户名：
		<input type="text" name="user" id="us" />
		验证码：
		<input type="text" name="CheckCode" id="cc" style="height:25px;" size="8" maxlength="4">&nbsp<img src="Code.jsp" onclick="f()" id="aaa" ><span id="check"></span>  -->
<script type="text/javascript">
			function CreateAjax() {
				var ajax = null;
				try {
					ajax = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					ajax = new XMLHttpRequest();
				}
				return ajax;
			}
</script>


<script>
			document.getElementById("us").onblur = function() {
				var username = this.value;
				var ajax = CreateAjax();
				if (ajax != null) {
					var method = "POST";
					var url = "${pageContext.request.contextPath}/servlet/CheckUsername";
					ajax.open(method, url);
					
					//设置AJAX请求头为POST，他会将请求体中的汉字自动进行UTF-8的编码
					ajax.setRequestHeader("content-type",
							"application/x-www-form-urlencoded");
					var content = "user=" + username;
					ajax.send(content);
					ajax.onreadystatechange = function() {
						if (ajax.readyState == 4) {
							if (ajax.status == 200) {
								var tip = ajax.responseText;
								document.getElementById("res").innerHTML = tip;
							}
						}
					};
				}

			};
</script>

<script>
function f(){		
	  var url = document.getElementById("aaa");  
      url.src ="Code.jsp?d"+Math.random();
      document.getElementById("cc").value="";
      var pic = document.getElementById("check");	
	  pic.innerHTML = "";
	}	
	
</script>
<script>
	//验证码
		document.getElementById("cc").onkeyup = function(){
			var code = this.value;
			if (code.length == 5)
				 {
				    var ajax = CreateAjax();
					if (ajax != null) 
					{
						method = "POST";
						url = "${pageContext.request.contextPath}/servlet/CheckCode";
						ajax.open(method, url);
						
						ajax.setRequestHeader("content-type","application/x-www-form-urlencoded");//
						var content = "CheckCode=" + code;
						ajax.send(content);
						ajax.onreadystatechange = function() 
						{
							if (ajax.readyState == 4)
						 {
							if (ajax.status == 200)
							 {
									var pic = ajax.responseText;
									//创建img标签
									var imgElement = document.createElement("img");//
									//设置img标签的src/width/height的属性值
									imgElement.src = pic;
									imgElement.style.width = "38px";
									imgElement.style.height= "38px";
									imgElement.style.verticalAlign="middle";
								
									//定位span标签
									var spanElement = document.getElementById("check")//
									//清空span标签中的内容
									spanElement.innerHTML = "";
									//将img标签加入到span标签中
									spanElement.appendChild(imgElement);
								}
							}
						};
				}
			}
			else{
			
				var pic = document.getElementById("check");	
				pic.innerHTML = "";
			
			}
			
			};

		

	
</script>
			
	
		
			

		<!-- <form action="servlet/CheckUsername" method="POST"> 
		<input type ="text" name = "user" /><br>
		
		<input type ="submit" value ="提交"/>
	</form> -->
</body>
</html>
