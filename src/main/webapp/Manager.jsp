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
				url = '${pageContext.request.contextPath}/userUpdateById.action'+row.id;
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
						$.ajax('${pageContext.request.contextPath}/userDelete.action',{"id":row.id},function(stat){
							if (stat.success){
							alert("323");
								$('#dg').datagrid('reload');	// reload the user data
							} else {
								$.messager.show({	// show error message
									title: 'Error',
									msg: result.msg
								});
							}
						},"json");
					}
				});
			}
		}
</script>
  <script type="text/javascript">
var url;
		function newVideoColl(){
			$('#dlg').dialog('open').dialog('setTitle','添加订单');
			$('#fm').form('clear');
			url = '${pageContext.request.contextPath}/CreateVideoColl.jsp';
		}
		function editVideoColl(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','修改信息');
				$('#fm').form('load',row);
				url = '${pageContext.request.contextPath}/getVideoCillById.action?id='+row.id;
			}
		}

		function destroyVideoColl(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$.messager.confirm('提示','确定删除本条信息?',function(r){
					if (r){
						$.post(url,data,function(result))
						var url='${pageContext.request.contextPath}/delVideoColl.action',
						var data:id:row.id},
						function(result){
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
  
  </head>


    

<body>   
   <div id="cc" class="easyui-layout" data-options="fit:true">   
    <div data-options="region:'north',border:true" style="height:150px;">
    
    	<img style="width:100%;height:148px" src="images/back_header.png"></img>
    
    </div>   
    <div data-options="region:'south'" style="height:100px;"></div> 
    <div data-options="region:'center'" style="padding:5px;background:#eee;">
			<div id="tabs" class="easyui-tabs" data-options="fit:true" >   
			</div> 
    </div>     
    <div data-options="region:'west',title:'管理菜单',iconCls:'icon-large-clipart' " style="width:200px;">
    		
			   
					        <div title="&nbsp;用户管理" style="padding-left:10px;padding-top:10px"> 
					        	  
										        <span><a id="user_man" 
										        		href="" 
										        		class="easyui-linkbutton" 
										        		title="用户管理"
										        		style="letter-spacing:10px;width:150px">用户管理
										        		</a>
										       	</span>
						     </div> 
					        <div title="&nbsp;订单管理" style="padding-left:10px;padding-top:10px"> 
					        	  
										        <span><a id="vc_man" 
										        		href="" 
										        		class="easyui-linkbutton" 
										        		title="订单管理"
										        		style="letter-spacing:10px;width:150px">订单管理
										        		</a>
										       	</span>
						     </div> 
					        <div title="&nbsp;产品管理" style="padding-left:10px;padding-top:10px"> 
					        	  
										        <span><a id="video_man" 
										        		href="" 
										        		class="easyui-linkbutton" 
										        		title="产品管理"
										        		style="letter-spacing:10px;width:150px">产品管理
										        		</a>
										       	</span>
						     </div> 
					        <div title="&nbsp;配置信息" style="padding-left:10px;padding-top:10px"> 
					        	  
										        <span><a id="user_man" 
										        		href="" 
										        		class="easyui-linkbutton" 
										        		title="配置信息"
										        		style="letter-spacing:10px;width:150px">配置信息
										        		</a>
										       	</span>
						     </div> 
					        <div title="&nbsp;关于" style="padding-left:10px;padding-top:10px"> 
					        	  
										        <span><a id="user_man" 
										        		href="" 
										        		class="easyui-linkbutton" 
										        		title="关于"
										        		style="letter-spacing:10px;width:150px">关于
										        		</a>
										       	</span>
						     </div> 
		       
				   
    </div>   

<script type="text/javascript">
		$("a").click(function(){
				//获取你所单击的按钮的标题
				var title = $(this).text();
					title = $.trim(title);
				
				//如果title变量是"增加"
				if("用户管理" == title)
				{
					//查看该选项卡是否已经打开
					var flag = $("#tabs").tabs("exists",title);
					//如果未打开
					if(!flag)
					{
						//打开选项卡
						$("#tabs").tabs("add",
						{
							"title" : title,
							"closable" : true,
							"selected": true,
							"href":"${pageContext.request.contextPath}/admin/UserListPage.jsp"
						});
					}
					
				}else if("订单管理" == title){
					//查看该选项卡是否已经打开
					var flag = $("#tabs").tabs("exists",title);
					//如果未打开
					if(!flag)
					{
						//打开选项卡
						$("#tabs").tabs("add",
						{
							"title" : title,
							"closable" : true,
							"selected": true,
							"href":"${pageContext.request.contextPath}/admin/VideoCollListPage.jsp"
						});
					}
				}else if("产品管理" == title){
					//查看该选项卡是否已经打开
					var flag = $("#tabs").tabs("exists",title);
					//如果未打开
					if(!flag)
					{
						//打开选项卡
						$("#tabs").tabs("add",
						{
							"title" : title,
							"closable" : true,
							"selected": true,
							"href":"${pageContext.request.contextPath}/admin/UserListPage.jsp"
						});
					}
				}
				
}); 
</script>
</body>
</html>
