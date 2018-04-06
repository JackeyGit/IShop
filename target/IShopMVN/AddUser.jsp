 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <div class="panel-body" style="padding-bottom:0px;">
        <div class="panel panel-default">
            <div class="panel-body">
                <form id="addUserForm" class="form-horizontal" >
                    <div class="form-group" style="margin-top:15px">
                    	<div class="row">
	                    		<label class="control-label col-sm-4" >名称</label>
	                        	<div class="col-sm-5">
	                            	<input type="text" id="name" name="userName" class="form-control" >
	                        	</div>
	                    </div><br/>
	                    <div class="row">
	                    		<label class="control-label col-sm-4" >密码</label>
	                        	<div class="col-sm-5">
	                            	<input type="text" id="pwd" name="loginPwd" class="form-control" >
	                        	</div>
	                    </div><br/>
	                    <div class="row">
	                    		<label class="control-label col-sm-4" >手机</label>
	                        	<div class="col-sm-5">
	                            	<input type="text"  id="phone" name="userPhone" class="form-control" >
	                        	</div>
	                    </div><br/>
	                    <div class="row">
	                    		<label class="control-label col-sm-4" >邮箱</label>
	                        	<div class="col-sm-5">
	                            	<input type="text" id="email" name="userEmail" class="form-control" >
	                        	</div>
	                    </div><br/>
	                    
             		 <!-- 	<div  class="row">
             		 		<div class="col-sm-offset-4">
             		 			<button id="btn_adduser" type="button" class="btn btn-success">
			                		<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>添加
			           		 </button> ;&nbsp;&nbsp;
			           		 <button id="btn_exit" type="button" class="btn btn-info">
			                		<span class="glyphicon glyphicon-off" aria-hidden="true" aria-label="close"></span>取消
			           		 </button>
             		 		</div>
			            
            
                    </div> -->
                </form>
            </div>
        </div>
        <script>
       /*  $('#btn_adduser').click(function(){
        	var name= $('#name').val();
        	var pwd= $('#pwd').val();
        	var phone= $('#phone').val();
        	var email= $('#email').val();
        	
        
        	url='${pageContext.request.contextPath}/register.action';
        	sendData={
        			userName:name,
        			loginPwd:pwd,
        			userEmail:email,
        			userPhone:phone
        	}
			$.post(url,sendData,function(){
			   
			  $("#tb_users").bootstrapTable("refresh",'${pageContext.request.contextPath}/findAllUser.action?time='+new Date().getTime());  //请求成功刷新表格，加载数据
				 dialog.close();
				});
        })
        
        $('#btn_exit').click(function(){
         dialog.close();
         
        })
         */
        
        
        </script>
        
        
        
        
               
