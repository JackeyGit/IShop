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
    		<!-- 类别 -->
			<div 
					id="accordionID" 
					class="easyui-accordion" 
					data-options="border:false,selected:-1" 
					style="width:198px;height:300px;">   
			   
					        <div title="&nbsp;用户管理" style="padding-left:35px;padding-top:10px"> 
					        	  
										        <span><a id="user_add" 
										        		href="${pageContext.request.contextPath}/admin/UserListPage.jsp" 
										        		class="easyui-linkbutton" 
										        		data-options="iconCls:'icon-add'" 
										        		style="letter-spacing:10px">用户管理
										        		</a>
										       	</span>
						     </div> 
		       
				    <div title="&nbsp;视频管理"  style="padding-left:35px;padding-top:10px"> </div>
				    <div title="&nbsp;网站配置">   
				        content3    
				    </div>     
				    <div title="&nbsp;公告">   
				        content3    
				    </div>     
				    <div title="&nbsp;关于">   
				        content3    
				    </div>     
			</div> 
    </div>   
</div>
<script type="text/javascript">
		$("a").click(function(){
				//获取你所单击的按钮的标题
				var title = $(this).text();
					title = $.trim(title);
				//如果title变量是"增加"
				if("增加用户" == title)
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
							"href":"${pageContext.request.contextPath}/admin/AddUser.jsp",
							"iconCls" : "icon-add"
						});
					}
				}else if("查询用户" == title){
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
							"href":"${pageContext.request.contextPath}/admin/UserListPage.jsp",
							"iconCls" : "icon-add"
						});
					}
				}else if("修改用户" == title){
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
							context:title,
							"iconCls" : "icon-add"
						});
					}
				}else if("删除用户" == title){
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
							context:title,
							"iconCls" : "icon-add"
						});
					}
				}
});
</script>
<script type="text/javascript">
		$("#userlist_tab").datagrid({
			url : '${pageContext.request.contextPath}/getAllUser?time=' + new Date().getTime(),    
		    columns : [[    
				        {field:'id',title:'编号',width:100},    
				        {field:'username',title:'姓名',width:100},    
				        {field:'password',title:'工作',width:100},    
				        {field:'coin',title:'上编',width:100},    
				        {field:'credit',title:'入时',width:100},    
				        {field:'phonenum',title:'月薪',width:100},    
				        {field:'email',title:'佣金',width:100},    
				        {field:'buyvideoid',title:'佣金',width:100},    
				        {field:'ulevel',title:'部编',width:100}   
		    ]],
		    fitColumns : true,
		    singleSelect : true,
		    pagination : true,
		    pageNumber : 1,
		    pageSize : 9,
		    /* pageList : [9], */
		    fit:true
		});
</script>
</body>
</html>
