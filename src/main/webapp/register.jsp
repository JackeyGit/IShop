<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <link rel="stylesheet" href="css/logreg/reset.css"/>
    <link rel="stylesheet" href="css/logreg/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/logreg/zhuce.css"/>
    <link rel="stylesheet" href="css/logreg/other-style.css"/>
</head>
	<!--header-->
    <div class="header-border main-border-bottom2">
        <div class="logo-header">
            <div class="div-logo" align="left"></div>
            <div class="logo-txt already-txt">我已经注册，马上</div>
            <a href="${pageContext.request.contextPath}/login.jsp" class="logo-txt main-theme-color">登录</a>
        </div>
    </div>
    <!-- content -->
    <div class="content">
 <form name="form" id="regUser" accept-charset="utf-8"  action="${pageContext.request.contextPath}/register.action" method="post">
		<div class="step-info padding-left-72px" >
			<div class="step step-orange main-theme-color" >
				<span class="step_num">1</span>
				<span class="step_txt">设置登录名</span>
			</div>
			<div class="arrow_step" ></div>
			<div class="step step-gray none-color " >
				<span class="step_num">2</span>
				<span class="step_txt">注册成功</span>
			</div>
        </div>
        
        <div class="inbox" >
            <input id="username" type="text" name="userName" class="phone input-div" placeholder="请输入用户名" />
            <div class="input-img-div phone-img"></div>
        </div>
        <div class="inbox" >
            <input id="passwd" type="password" name="loginPwd" class="phone input-div" placeholder="请设置账号密码">
            <div class="input-img-div lock-img"></div>
        </div>
        <div class="inbox" >
            <div class="input-div ">
                <input id="email" type="email" name="userEmail"  class="phone input-div" placeholder="请设置邮箱">
            </div>
            <div class="input-img-div lock2-img"></div>
        </div>
        <div class="inbox" >
            <div class="input-div">
                <input id="phone"   name="userPhone" type="text" class="phone" placeholder="请输入手机号码" maxlength="16">
            </div>
            <div class="input-img-div member2-img"></div>
        </div>
        
	    <div class="inbox inbox2" >
            <input id="code" type="text" class="phone input-div code" placeholder="请输入短信验证码，后续开发" />
            <div class="input-img-div reinput-img"></div>
            <button id="check_code" class="btn-check main-theme-bg text-white-color">获取验证码</button>
        </div> 
        <div class="read_state" >
            <label for="read_state">
                <input id="read_state" type="checkbox" >
                我已阅读并同意《购买章程》《广告协议》
            </label>
        </div>
        <a href=""><button id="reg" class="btn-register main-theme-bg" >同意协议并注册</button></a>
        </form>
	</div>  
	<!--footer-->
    <div class="footer">
        <div class="empty-div"></div>
        <div class="about" align="center">
        	<span class="gary-text">Copytight © 2004 - 2016</span>
            <span>&nbsp;IShop &nbsp;鄂  ICP证070359号 </span>
        </div>
        <div class="contact" align="center">
            <span>违法和不良信息举报电话：</span>
            <a class="phone-num">12377</a>
        </div>
    </div>
    
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/login_register.js"></script>
    
    <script>
    $("#username").blur(function(){
		if ( $('#username').val() == "")
		{
			$("#username").val("");
			$('#username').css({
					border: '2px solid #FF0036',color: '#FF0036',
				});
			$('#username').attr("placeholder", "用户名错误，请重新输入！");
		}else{
		    var username=$('#username').val();
			  var url = "${pageContext.request.contextPath}/userExist.action?time="+new Date().getTime();
				var sendData = {"userName":username};
				$.post(url,sendData,function(backData){
						if(backData=='yes'){
							$("#username").val("");
							$('#username').css({
								border: '2px solid #FF0036',color: '#FF0036',});
							$('#username').attr("placeholder", "用户名已被占用，请重新输入！");
						}else{
							$('#username').css({
								border: '1px solid #F8F8FF',color: '#303030'});
							    name=true;
					
			}}); }});
    

    $("#passwd").blur(function(){
    	 var passwd=$('#passwd').val();
    	 if (passwd == null || passwd.length <8) {
    		 $("#passwd").val("");
    		 $('#passwd').css({
					border: '2px solid #FF0036',color: '#FF0036',});
			 $('#passwd').attr("placeholder", "密码小于8位，请重新输入！");
    	    }else {
    	    	var reg = /^[A-Za-z0-9]{8,16}$/;
    	    	 if (!reg.test(passwd)) {
    	    		 $("#passwd").val("");
    	    		 $('#passwd').css({
    						border: '2px solid #FF0036',color: '#FF0036',});
    				 $('#passwd').attr("placeholder", "密码不是数字和字母！");
    	    	    }
    	    	 else{
    	    		 $('#passwd').css({
							border: '1px solid #F8F8FF',color: '#303030'});
    	    		 pwd=true;
    	    	 	 }
    	    	 }
    	    });
    
    $("#email").blur(function(){
   	 var email=$('#email').val();
   	 if (email == null) {
   		 $("#email").val("");
   		 $('#email').css({
					border: '2px solid #FF0036',color: '#FF0036',});
			 $('#email').attr("placeholder", "邮箱不能为空！");
   	    }else {
   	    	var reg = /^[0-9A-Za-z][\.-_0-9A-Za-z]*@[0-9A-Za-z]+(\.[0-9A-Za-z]+)+$/;
   	    	 if (!reg.test(email)) {
   	    		 $("#email").val("");
   	    		 $('#email').css({
   						border: '2px solid #FF0036',color: '#FF0036',});
   				 $('#email').attr("placeholder", "不是合法邮箱，请重新输入！");
   	    	    }
   	    	 else{
   	    		 $('#email').css({
							border: '1px solid #F8F8FF',color: '#303030'});
   	    		email=true;
   	    	 	 }
   	    	 }
   	    });
    
    $("#phone").blur(function(){
      	 var phone=$('#phone').val();
      	 if (phone == null || phone.length<11 ) {
      		 $("#phone").val("");
      		 $('#phone').css({
   					border: '2px solid #FF0036',color: '#FF0036',});
   			 $('#phone').attr("placeholder", "手机号不能为空！");
      	    }else {
      	    	var reg =  /^[1][3,4,5,7,8][0-9]{9}$/;
      	    	 if (!reg.test(phone)) {
      	    		 $("#phone").val("");
      	    		 $('#phone').css({
      						border: '2px solid #FF0036',color: '#FF0036',});
      				 $('#phone').attr("placeholder", "不正确的手机号，请重新输入！");
      	    	    }
      	    	 else{
      	    		 $('#phone').css({
   							border: '1px solid #F8F8FF',color: '#303030'});
      	    		phone=true;
      	    	 	 }
      	    	 }
      	    });  
   
    $("#reg").click(function(){
    	
    	 if(name && pwd && email && phone){
    	$("#regUser").submit();
    	}
    });
    
    </script>

</body>
</html>