<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    

  </head>
  
  <body>
  
	<div>
		<table>
       <tr><th>名字</th><th>说明</th><th>图片预览</th></tr>
        <c:forEach items="${requestScope.videoColls}" var="item">
            <tr>    <td>${item.videoColl.vcname}</td>   <td>${item.videoColl.vcid}</td>  <td><img src="${item.videoColl.vcpic}"/> </td></tr>
        </c:forEach>
     </table>
     
     
     
     
  <%--   <ul>
        <li><a href='?nowPage=${nowPage-1}'>←上一页</a></li>
                   <c:forEach varStatus="i" begin="1" end="${sumPage}">
                        <c:choose>
                           <c:when test="${nowPage==i.count}">
                              <li class='disabled'>${i.count}</li>
                           </c:when>
                           <c:otherwise>
                               <li  class='active'><a href='?nowPage=${i.count}'>${i.count}</a></li>
                           </c:otherwise>
                        </c:choose>
                   </c:forEach>
            <li><a href='?nowPage=${nowPage+1}'>下一页→</a></li>
      </ul> --%>
	
	</div>








  </body>
</html>
