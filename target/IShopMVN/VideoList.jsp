<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>视频列表展示</title>
  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<link rel="stylesheet" type="text/css" href="css/table.css"> 
	<script type="text/javascript" language="JavaScript" src="js/list.js" ></script>	
  </head>

  <body>
  	 <table  class="altrowstable" id="alternatecolor" >
  	 	<tr>
  	 		<th>序号</th>
  	 		<th>视频编号</th>
  	 		<th>视频名称</th>
  	 		<th>视频所有者</th>
  	 		<th>视频地址</th>
  	 		<th>视频上传日期</th>
  	 		<th>缩略图url</th>
  	 		<th>视频介绍</th>
  	 		<th>视频类型</th>
  	 		<th>播放次数</th>
  	 		<th>操作</th>
  	 		
  	 		
  	 		
  	 	</tr>
  	 	<s:if test="#request.listvideos != null">
  	 		<s:iterator var="video" value="#request.listvideos" status="st">
  	 			<tr>
  	 				<td> <s:property value="#st.count"/> </td>
  	 				<td> <s:property value="#video.vid"/> </td>
  	 				<td> <s:property value="#video.vname"/> </td>
  	 				<td> <s:property value="#video.vowner"/> </td>
  	 				<td> <s:property value="#video.vurl"/> </td>
  	 				<td> <s:property value="#video.uploadtime"/> </td>
  	 				<td> <s:property value="#video.purl"/> </td>
  	 				<td> <s:property value="#video.instruction"/> </td>
  	 				<td> <s:property value="#video.vcount"/> </td>
  	 				<td> <s:property value="#video.mid"/> </td>
  	 				<td> 
  	 				
  	 				<a href='<s:url action="video_viewUpdateVideo"><s:param name="video.vid" value="vid"></s:param></s:url>'>修改</a>
  	 				<a href='<s:url action="video_deleteVdeo"><s:param name="video.vid" value="vid"></s:param></s:url>'>删除</a>
  	 				
  	 			
  	 				</td>
  	 			</tr>
  	 		</s:iterator>
  	 
  	 	</s:if>
  	 	<s:else>
  	 		<tr>
  	 			<td colspan="5">对不起，没有你要找的数据！请先录入。</td>
  	 		</tr>
  	 	</s:else>
  	 	
  	 </table>
 	 
  	 
  </body>
  
</html>
