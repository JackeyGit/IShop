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


<body>   
 <table id="dg"  class="easyui-datagrid" style="width:1210px;height:380px"
		url="${pageContext.request.contextPath}/getVideoColls.action?time=' + new Date().getTime()"
		toolbar="#toolbar"
		rownumbers="true" fitColumns="true" singleSelect="true">
	<thead>
		<tr>
					<th field="vid" width="60" align="center">视频编号</th> 
					<th field="vname" width="100" align="center">视频名称</th> 
					<th field="vownerid" width="100" align="center">上传者</th> 
					<th field="vtime" width="100" align="center">上传时间</th> 
					<th field="vurl" width="100" align="center">视频地址</th> 
					<th field="vcoll" width="100" align="center">所属课程</th> 
					<th field="vcount" width="80" align="center">观看次数</th> 
					
		</tr>
	</thead>
</table>
<div id="toolbar">
	<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newVideoColl()">添加课程</a>
	<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editVideoColl()">修改课程</a>
	<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyVideoColl()">删除课程</a>
</div>

<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		
		<form id="fm" method="post" novalidate>
			
			<div class="fitem">
				<label>视频名称:</label>
				<input name="vname" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>上传者:</label>
				<input name="vownerid" >
			</div>
			<div class="fitem">
				<label>视频地址:</label>
				<input name="vurl" >
			</div>
			<div class="fitem">
				<label>所属课程:</label>
				<input name="vcoll" >
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
	  
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveVideoColl()">保存</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>

</body>
</html>
