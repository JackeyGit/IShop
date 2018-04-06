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
   <table id="dg"></table> 

<script type="text/javascript">
		$("#dg").datagrid({
			url : '${pageContext.request.contextPath}/findAllUser.action?time=' + new Date().getTime(),    
		    columns : [[    
				        {field:'id',title:'用户编号',width:40,align:'center'},    
				        {field:'username',title:'用户名',width:100,height:10,align:'center'},    
				        {field:'password',title:'密码',width:100,align:'center'},   
				        {field:'phonenum',title:'联系方式',width:100,align:'center'},   
				        {field:'email',title:'电子邮箱',width:100,align:'center'},  
				        {field:'buyvideoid',title:'购买视频',width:100,align:'center'},  
				        {field:'coin',title:'金币',width:100,align:'center'},
				        {field:'credit',title:'积分',width:100,align:'center'},  
				        {field:'ulevel',title:'用户级别',width:100,align:'center'}
				       
		    ]],
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
