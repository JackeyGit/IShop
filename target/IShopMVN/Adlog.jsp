<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html><head>
<title>商城-管理员</title> 



<link rel="stylesheet" href="css/login2.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/login.js"></script></head>
<body>
<h1>管理系统登陆</h1>

<div class="login" style="margin-top:50px;">
    
  

            <!--登录-->
            
    <div class="web_login" id="web_login">
   
   <div class="login-box">
    
    
    <form name="form2" id="regUser" accept-charset="utf-8"  action="${pageContext.request.contextPath}/adminLogin.action" method="post">
	      <input type="hidden" name="to" value="reg"/>
		      		     
        <ul class="reg_form" id="reg-ul">
                <li>
                     <div class="uinArea" id="uinArea">
		                		<label class="input-tips" for="u">帐号：</label>
				                <div class="inputOuter" id="uArea">
				                    
				                    <input type="text" id="u" name="name" value="admin" class="inputstyle"/>
				                </div>
              		 </div>
                </li>
                
                <li>
                <div class="pwdArea" id="pwdArea">
               		<label class="input-tips" for="p">密码：</label> 
              		 <div class="inputOuter" id="pArea">
                   		 <input type="password" id="p" name="password" value="888888" class="inputstyle"/>
                	</div>
                </div>
                    
                </li>
                               
                <li>
                  <div class="pwdArea" id="pwdArea">
               		<!-- <label class="input-tips" for="p">验证：</label>  -->
              		 <div class="inputOuter" id="pArea" style="owerfloe:hidden">
                   		 <!--  <input type="text" id="u" name="checknum" class="checkcode" maxlength="5"/> -->
                   		<!--  <img  id="CHECHIMG" class="checkimg" src="Code.jsp"/>  -->
						 <!-- <span id ="yzm"></span> -->
                	</div>
                </div> 
                </li>
                
                
           
            </ul>
            <div style="padding-left:100px;margin-top:20px;">
            <input type="submit" value="登 录" style="width:150px;" class="button_blue"/>
            </div>
           </form>
           
    
    </div>
   
    
    </div>
            

  </div>

  
</div>
<script>
$("#CHECHIMG").click(function(){
	$("#CHECHIMG").attr("src","${pageContext.request.contextPath}/Code.jsp?time="+new Date().getTime()); 
});	

</script>
</body>
</html>