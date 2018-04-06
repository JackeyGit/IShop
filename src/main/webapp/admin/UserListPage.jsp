<%@ page language="java"  pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员后台</title>
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/icon.css" type="text/css"></link>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
	<style type="text/css">
		#fm{
			margin:0;
			padding:10px 30px;
		}
		.ftitle{
			font-size:14px;
			font-weight:bold;
			color:#666;
			padding:5px 0;
			margin-bottom:10px;
			border-bottom:1px solid #ccc;
		}
		.fitem{
			margin-bottom:5px;
		}
		.fitem label{
			display:inline-block;
			width:80px;
		}
	</style>
  </head>

<script type="text/javascript">
var url;
		function newUser(){
			$('#dlg').dialog('open').dialog('setTitle','添加用户');
			$('#fm').form('clear');
			url = '${pageContext.request.contextPath}/addUser.action';
		}
		function editUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','修改信息');
				$('#fm').form('load',row);
				url = '${pageContext.request.contextPath}/userUpdateById.action?id='+row.id;
			}
		}
		function saveUser(){
			$('#fm').form('submit',{
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.success){
						$('#dlg').dialog('close');		// close the dialog
						$('#dg').datagrid('reload');	// reload the user data
					} else {
						$.messager.show({
							title: 'Error',
							msg: result.msg
						});
					}
				}
			});
		}
		function destroyUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$.messager.confirm('提示','确定删除本条信息?',function(r){
					if (r){
						$.post('${pageContext.request.contextPath}/userDelete.action',{id:row.id},function(result){
							if (result.success){
								$('#dg').datagrid('reload');	// reload the user data
							} else {
								$.messager.show({	// show error message
									title: 'Error',
									msg: result.msg
								});
							}
						},'json');
					}
				});
			}
		}
</script>
<body>   
 <table id="dg"  class="easyui-datagrid" style="width:1210px;height:380px"
		url="${pageContext.request.contextPath}/findAllUser.action?time=' + new Date().getTime()"
		toolbar="#toolbar"
		rownumbers="true" fitColumns="true" singleSelect="true">
	<thead>
		<tr>
					
					<th field="userName" width="100" align="center">用户名</th> 
					<th field="loginPwd" width="100" align="center">密码</th> 
					<th field="trueName" width="100" align="center">联系方式</th> 
					<th field="userPhoto" width="100" align="center">电子邮箱</th> 
					<th field="userQQ" width="100" align="center">所购视频</th> 
					<th field="userPhone" width="80" align="center">金币</th> 
					<th field="userEmail" width="80" align="center">积分</th> 
					<th field="payPwd" width="100" align="center">用户级别</th> 
					<th field="userType" width="100" align="center">收藏</th> 
					<th field="userSex" width="60" align="center">用户编号</th> 
					<th field="userFrom" width="100" align="center">用户名</th> 
					<th field="userStatus" width="100" align="center">密码</th> 
					<th field="userScore" width="100" align="center">联系方式</th> 
					<th field="userTotalScore" width="100" align="center">电子邮箱</th> 
					<th field="userMoney" width="100" align="center">所购视频</th> 
					<th field="lockMoney" width="80" align="center">金币</th>
					<th field="brithday" width="100" align="center">收藏</th> 
					<th field="createTime" width="80" align="center">金币</th> 
					<th field="lastTime" width="80" align="center">积分</th> 
					<th field="isvalid" width="100" align="center">用户级别</th> 
					<th field="lastIP" width="100" align="center">收藏</th> 
		</tr>
	</thead>
</table>
<div id="toolbar">
	<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加用户</a>
	<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">修改用户</a>
	<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除用户</a>
</div>

<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>用户名:</label>
				<input name="username" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>密码:</label>
				<input name="password" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>邮箱:</label>
				<input name="email" class="easyui-validatebox" validType="email">
			</div>
			<div class="fitem">
				<label>手机号:</label>
				<input name="phonenum" >
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">保存</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
<script>
$("#dg").datagrid({
			url : '${pageContext.request.contextPath}/findAllUser.action?time=' + new Date().getTime(),    
		    fitColumns : true,
		    singleSelect : true,
		    pagination : true,
		    pageNumber : 1,
		    pageSize : 15,
		    pageList : [15,30,45],
		    fit:true
		});
</script>
</body>
</html>
