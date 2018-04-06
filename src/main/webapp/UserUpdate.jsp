<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<HTML>
<head><title>修改用户信息</title></head>

<style>
div{
	     margin:10% 10px 0 15%	;
		 font-family:"Microsoft YaHei UI";
		 font-size:18px;
		 color:#000;
		}
.button{
	
		width:80px;
		height:30px;
		background-color:#0CF;
		color:#FFF;
		border:1px solid #FFF;
		}
.button1{
		width:80px;
		height:30px;
		background-color:#FFF;
		color:#0cf;
		border:1px solid #0CF;
		}
</style>

<body>

<div>
   <s:form action="user_userUpdate" method="post">
		    用户密码：   <s:textfield name="user.password" type="password"></s:textfield> </br>
		    性&nbsp;&nbsp;别：<s:radio list="#{'男':'男','女':'女'}" name="user.sex" value="'男'"></s:radio></br>
		    班&nbsp;&nbsp;级： <s:textfield name="user.classroom" label="班级"></s:textfield></br>
		    邮&nbsp;&nbsp;箱： <s:textfield name="user.email" label="邮箱"></s:textfield></br>
                        联系方式：  <s:textfield name="user.phone" label="联系方式"></s:textfield></br>
        <input type="submit" vlaue="提交" class="button"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取消" class="button1"/>
	</s:form> 
    
</div>
</form>
</body>
</HTML>
