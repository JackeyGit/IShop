<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户管理</title>
	 
	<link rel="stylesheet" type="text/css" href="css/table.css"> 
	<ccript type="text/javascript" language="JavaScript" src="js/list.js" ></ccript>	  
  </head>

  <body>
  	 <table class="altrowstable" id="alternatecolor" >
  	 	<tr>

  	 	
  	 			 		
  	 					<th>课程编号</th>    
				       <th>课程名称</th>    
				        <th>创建者</th>
				       <th>创建时间</th> 
				        <th>缩略图</th>  
				        <th>课程描述</th> 
				       <th>课程价格</th>
				       <th>课程类型</th>
				       <th>操作</th>
</tr>
  	 	<%-- <c:if test="${requestScope.users}  != null"> --%>
  	 	<c:forEach items="${requestScope.videoColls}" var="item" varStatus="status">
  	 			<tr>
  	 				
  	 				<td>${item.vcid}</td>
  	 				<td>${item.vcname}</td>
  	 				<td>${item.vcowner}</td>
  	 				<td>${item.vctime}</td>
  	 				<td>${item.vcpic}</td>
  	 				<td>${item.vcdescr}</td>
  	 				<td>${item.vcprice}</td>
  	 				<td>${item.vctid}</td>
  	 				
  	 				<td> 
  	 				<a href="delVideoColl.action?id=${item.vcid}">删除</a>
  	 				<a href="getVideoCillById.action?id=${item.id}">增加</a>
  	 				</td>
  	 				
  	 				
  	 			</tr>
  	 	</c:forEach>
  
  	 </table>
  </body>
</html>
