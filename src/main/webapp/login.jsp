<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>登录页面</title>
<link rel="stylesheet" href="css/logreg/reset.css" />
<link rel="stylesheet" href="css/logreg/font-awesome.min.css" />
<link rel="stylesheet" href="css/logreg/denglu.css" />
<link rel="stylesheet" href="css/logreg/other-style.css" />
</head>
<!--header-->
<div class="login-header">
	<div class="div-logo" align="left">
		<img src="img/logreg/logoT.gif">
	</div>
	<div class="logo-txt">
		<span class="welcome-txt">欢迎来到IShop！</span>
	</div>
</div>
<!--content-->
<div class="login-content">
	<form name="form" id="loginUser" accept-charset="utf-8" action="${pageContext.request.contextPath}/login.action" method="post">
		<div class="logo-content-dv">
			<img class="logo-img-denglu" src="img/logreg/big.jpg">
			<div class="logo-box">
				<div class="tab-box">
					<div class="tab-div cont-sc-top">
						<a class= "tab-common"> 用户登录 </a>

					</div>
				</div>
				

				
				<div>
					<div class="phone-num inbox">
						<div class="input-img-div">
							<img class="input-img" src="img/logreg/member.png" />
						</div>
						<div class="input-div">
							<input id="username" name="userName" type="text" class="phone" placeholder="用户名" maxlength="16" oninput="OnInput (event)" onpropertychange="OnPropChanged (event)"/>
							
						</div>
					</div>
					<div class="phone-num inbox">
						<div class="input-img-div">
							<img class="input-img" src="img/logreg/lock.png" />
						</div>
						<div class="input-div">
							<input id="passwd" type="password" name="loginPwd" class="phone" placeholder="密码" maxlength="16" oninput="OnInput (event)" onpropertychange="OnPropChanged (event)"/>
						</div>
					</div>
					<div class="pass-confirm-box inbox">
						<div class="input-img-div">
							<img class="input-img" src="img/logreg/reinput.png" />
						</div>
						<div class="input-div" ">
							<input id="checknum" type="text" name="checknum" class="checknum" placeholder="验证码" maxlength="5" style="height: 20px; oninput="OnInput (event)" onpropertychange="OnPropChanged (event)""/>
						</div>
					</div>
					<div class="captcha inbox">
						<img id="CHECHIMG" src="Code.jsp" />
					</div>
					<div class="info-div">
						<div class="autologin-check">
							<label for="autologin"> <input id="autologin"
								type="checkbox"> 自动登录
							</label>
						</div>
						<div id="flag" class="notice-txt">${requestScope.flag}</span></div>
						<!--<div class="notice-txt">
							 <img class="notice-img" src="img/logreg/notice.png" />  <span>${requestScope.flag}</span>
						</div>-->
					</div>
					<div class="info-div">
						<input type="button" id="loginUserSu" value="登 录" class="login-btn main-theme-bg" />
					</div>

					<div class="info-div common-txt">
						<span class="info-txt">若您还没有账号，欢迎</span> 
						<a href="${pageContext.request.contextPath}/register.jsp" id="reg" class="register main-theme-color">注册</a> 
						<a href="${pageContext.request.contextPath}/Adlog.jsp" class="forgot-pass">管理员后台</a>
					</div>
				</div>
			</div>
		</div>
		</form>
</div>

<!--footer-->
<div class="footer">
	<div class="empty-div"></div>
	<div class="footer-nav-bar footer-bar1" align="center">
		<a href="#">天猫商城</a>| <a href="#">天猫商城</a>| <a href="#">天猫商城</a>| <a
			href="#">天猫商城</a>| <a href="#">天猫商城</a>| <a href="#">天猫商城</a>| <a
			href="#">天猫商城</a>| <a href="#">天猫商城</a>| <a href="#">天猫商城</a>
	</div>
	<div class="footer-nav-bar" align="center">
		<a href="#">关于IShop</a>| <a href="#">联系我们</a>| <a href="#">诚聘英才</a>| <a
			href="#">供应商入驻</a>| <a href="#">平台招标</a>| <a href="#">友情链接</a>| <a
			href="#">法律申明</a>
	</div>
	<div class="about" align="center">
		<span>Copytight © 2004 - 2016</span> <span>&nbsp;IShop
			&nbsp;鄂ICP证070359号 </span>
	</div>
	<div class="contact" align="center">
		<span>违法和不良信息举报电话：</span> <a class="phone-num">12377</a>
	</div>
</div>

<script src="js/jquery-3.2.1.min.js"></script>

<script src="js/login_register.js"></script>

<script>
    $("#CHECHIMG").click(function(){
    	$("#CHECHIMG").attr("src","${pageContext.request.contextPath}/Code.jsp?time="+new Date().getTime()); 
    });	
    $("#reg").click(function(){
    	$("#regUser").submit();
    });
    
  var name=false,pwd=false,cknu=false;  
    
    $("#username").blur(function(){
		if ( $('#username').val() == "")
		{
			$("#username").val("");
			$('#username').css({
					border: '2px solid #FF0036',color: '#FF0036',
				});
			$('#username').attr("placeholder", "用户名错误，请重新输入！");
			 
			return false;  
		}else{
			 name=true;
			 }});
    
    
    $("#passwd").blur(function(){
    	 var passwd=$('#passwd').val();
    	 if (passwd == null || passwd.length <8) {
    		 $("#passwd").val("");
    		 $('#passwd').css({
					border: '2px solid #FF0036',color: '#FF0036',});
			 $('#passwd').attr("placeholder", "密码小于8位，请重新输入！");
			    
			 return false;
    	    }else {
    	    	var reg = /^[A-Za-z0-9]{8,16}$/;
    	    	 if (!reg.test(passwd)) {
    	    		 $("#passwd").val("");
    	    		 $('#passwd').css({
    						border: '2px solid #FF0036',color: '#FF0036',});
    				 $('#passwd').attr("placeholder", "密码不是数字和字母！");
    				   
    				 return false;
    	    	    }
    	    	 else{
    	    		 $('#passwd').css({
							border: '1px solid #F8F8FF',color: '#303030'});
    	    		 pwd=true
    	    		 return true;
    	    	 	 }
    	    	 }
    	    });
    
    $("#checknum").keyup(function(){
    	if($('#checknum').val().length<5){
    		
			 return false;  
		}
		else
		{
			  var checknum=$('#checknum').val();
			  if(checknum.length==5){
			  var url = "${pageContext.request.contextPath}/checknum.action?time="+new Date().getTime();
			  var sendData = {"checknum":checknum};
			  $.post(url,sendData,function(backData){
						if(backData=='no')
						{
							$("#checknum").val("");
							$('#checknum').css({border: '2px solid #FF0036',color: '#FF0036',});
							$('#checknum').attr("placeholder", "验证码错误，请重新输入！");
							
							return false;  
						}else
						{
							$('#checknum').css({border: '1px solid #F8F8FF',color: '#303030'});
							 cknu=true  
							return true;
						}
				});						
			
		}
		}
   });
   $("#loginUserSu").click(function(){
	   if(name && pwd && cknu){
		   $("#loginUser").submit(); 
	   }
   });

   function OnInput (event) {
	   $("#flag").empty();
   }
   
    </script>


</body>
</html>