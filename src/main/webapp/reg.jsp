<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reg.css" type="text/css"></link>
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

	<div class="regtitle">用户注册</div>
	<div class="reg">
		<form id="reg" action="${pageContext.request.contextPath}/register.action" method="post">

		<p>
			<input type="text" id="name" name="username" placeholder="账号" class="inputstyle" /><span id="uname"></span>
		</p>

		<p>
			<input type="password" name="password" placeholder="密码" class="inputstyle" /><span id="pwd"></span>
		</p>


		<p>
			<input type="email" name="email" placeholder="邮箱" class="inputstyle" />
		</p>

		<p>
			<input type="tel" name="phonenum" placeholder="手机" class="inputstyle" />
		</p>

		<p>
			<input type="text" id="checkcode" name="checkCode" class="checkcode" /><img
				class="checkimg" src="Code.jsp" /><span></span>
		</p>
		<a onclick="document.getElementById('reg').submit()"  class="RegBtnBlue">注册</a>
	
	</form>
	</div>
	<script>
		 function validata(){   
        if($("#username").val()==""){   
            document.write("请输入名字");               
            return false;   
        }   
        if($("#password").val()==""){   
            document.write("请输入密码");   
            return false;   
        }          
        if($("#telephone").val()==""){   
            document.write("请输入电话号码");   
        }   
        if($("#email").val()==""){   
            $("#email").val("shuangping@163.com");   
        }   
    }      
	
	
	
	
//验证用户名	
$("input:eq(0)").blur(function(){
			var username = $("input:eq(0)").val();
			username=$.trim(username);
			if(username==""){
				$("input:eq(0)").focus();
				$("#uname").html("<img src='${pageContext.request.contextPath}/images/error.png'>");
			}else
			{
					var url="${pageContext.request.contextPath}/userExist.action";
					var data={"username":username};
					$.post(url,data,function(backData){
					//	alert(backData);
						if(backData=="yes")
						{
						//	$("#uname").html("用户已存在");
							$("input:eq(0)").focus();
							$("#uname").html("<img src='${pageContext.request.contextPath}/images/error.png'>");
						}else{
							$("#uname").html("<img src='${pageContext.request.contextPath}/images/ok.png'>");
						}
					})
		}
})

//验证密码
$("input:eq(1)").blur(function(){
      var pwd = $("input:eq(1)").val();
      var ret = /^[a-zA-Z][a-zA-Z0-9_]{5,20}$/;
      if(ret.test(pwd)){
       $("#pwd").html("<img src='${pageContext.request.contextPath}/images/ok.png'>");
      }else{
        $("input:eq(1)").focus();
		$("#pwd").html("密码格式不正确，请重新输入");
      }
    });		
//邮箱
$("input:eq(2)").blur(function(){
      var email = $("input:eq(2)").val();
      var ret = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
      if(ret.test(email)){
        alert('ok');
      }else{
        alert('wrong');
      }
    });
 // 手机
 $("input:eq(3)").blur(function(){
      var str = $("#t_phone").val();
      var ret = /^[\d]{5,20}$/;
      if(ret.test(str)){
        alert('ok');
      }else{
        alert('wrong');
      }
    });
		
			
</script>

</body>
</html>
