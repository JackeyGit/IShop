<%@ page language="java"  pageEncoding="UTF-8"%>
<html>
  <head>
    <title>商城-个人中心</title>
    <link rel="shortcut icon" href="images/cloudclass.ico">
  <link rel="stylesheet" href="css/usermain.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery-2.1.0.js"></script></head>
  <body>
  <form action="${pageContext.request.contextPath}/userUpdate.action" method="post">
   <div id="main">
   		<div id="menu">
   		     <div class="img"><img  src="images/t1.png"></div>  		     
   		     <div class="nav"><a href="index.jsp">首页</a></div>
   		     <div class="nav"><a type="submint">消息</a></div>
   		</div>
   		<div id=left>
   			<div id="top">
   			<img  src="images/touxiang.jpg">
   			</div>
   			<div id="buttom">
   				<script>
   				window.onload = function(){
					var divs = document.getElementsByClassName("leftMenu");
					var len = divs.length;
					for(var i=0;i<len;i++){
						divs[i].onclick = function(){
							for(var j=0;j<len;j++){
								divs[j].style.backgroundColor ="";
								divs[j].style.color="";
							}
							this.style.backgroundColor = "#009ACD";
							this.style.color="#FFF";
						};
					}
				};
   				</script>
   				    <div  class="leftTitle"><a>账号管理</a></div>
   			        <div class="leftMenu"><a id="updateinfo">个人资料</a></div> 
   			        <div class="leftMenu"><a id="safeclick">安全设置</a></div> 
   				     			
   			</div>	 			
   	    </div>
   		<div id=right>
   			<div id="info">
   				<p style="font-size:20px;font-weight:bold; font-family:微软雅黑;">您的基础信息：</p>
		   		<p>id:${sessionScope.user.userId}</p>
		   		<p>会员名：${sessionScope.user.userName}</p>
		   		<p>登陆邮箱：${sessionScope.user.userEmail}</p> 		
   			</div>	
   			<hr>		
	   		<div id="safe">
	   	    <p style="font-size:20px; font-weight:bold; font-family:微软雅黑;">安全设置：</p>
	   			<p>密码: <a id="editPWD">编辑 </a></p>
	   			<div id="newPWD">
	   			    原密码:<input type="userPwd"><br><br>
	   			    新密码:<input type="userPwd"><br><br>
	   			 <input type="submit" value="修改" class="button">&nbsp;
	   			 <input type="reset" value="取消" class="button1">		   			
	   			</div>   				   			
	   		    <p>绑定手机：${sessionScope.user.userPhone}<a id="editNum"> 编辑<< </a>
	   		    <div id="newNum">
	   		  
	   			  <input type="password"><br><br>
	   			   
	   			  <input type="submit" value="修改" class="button">&nbsp;
	   			 <input type="reset" value="取消" class="button1">		   			
	   			</div>  
	   		    
	   		    
	   		    </p><br>
	   		</div>
	   		<div id="personal-data">
	   		<p style="font-size:20px;font-weight:bold; font-family:微软雅黑;">完善信息：</p>
		   		<p>头像：</p>
		   		<p>昵&nbsp;&nbsp;称：<input type="text" name="username" readyonly="true"  onfocus="javascript:if(this.value=='${sessionScope.user.userName}')this.value='';"></p>
		   		<p>真实姓名：<input type="text" name="userName"></p>
		   		<p>在读院校：<input type="text" name="userEmail"></p>
		   		<p>在读职业：<input type="text" name="usePhone"></p>
		   		<p>性&nbsp;&nbsp;别：男<input type="radio" id="sex" name="userSex">女<input type="radio" id="gender" name="userSex"></p>
		   		生&nbsp;&nbsp;日：<select>
		   			<option>控件</option>
			
		   			</select><br><br>
		   		居住地：<select>
		   		     <option>中国</option>
		   		     <option>美国</option>
		   		     <option>其他</option>
		   		</select>
		   		<select>
		   		     <option>北京</option>
		   		     <option>吉林</option>
		   		     <option>山东</option>
		   		     <option>辽宁</option>
		   		     <option>台湾</option>  		
		   		</select>
		   		
		   		<br><br>
		   		家乡：<br><br>
		   		 <input type="submit" value="修改" class="button">&nbsp;
	   			 <input type="reset" value="取消" class="button1">		
	   		</div>
   		</div> 		
   </div>
   <div id="footer">  
   </div>
   </form>
  </body>
<script type="text/javascript">
   		$(document).ready(function(){
   			$("#personal-data").hide();
  				$("#safeclick").click(function(){
   			 		$("#personal-data").hide();
   			 		$("#safe").show();
 				});
 				$("#updateinfo").click(function(){
   			 		$("#personal-data").show();
   			 		$("#safe").hide();
 				});
   								
   			
   			$("#newPWD").hide();
   				$("#editPWD").click(function(){ 					
   					  $("#newPWD").toggle(100);
   					});	
   					$("#newNum").hide();
   					$("#editNum").click(function(){ 					
   					  $("#newNum").toggle(100);
   			
   					});			
   				});
   			
   			
   			</script>  
   			<script language="javascript" type="text/javascript">   
				$("#footer").load('index.html .footer');
			</script>
</html>
