<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>JSP中的几个标签</title>
  </head>
  
  <body>
  
	  <%
	     request.setAttribute("name", "Jack"); //向2.jsp传参法1
	  %>
	  <h2>这些信息是显示不出来的，因为很快就转发走了...</h2>
	  
     <!-- 
     	向2.jsp传参法2
     	还需注意<jsp:forward>中间只能放<jsp:param/>标签</jsp:forward>
      -->
     <jsp:forward page="2.jsp">
        <jsp:param value="OK" name="nm"/>
        <jsp:param value="22" name="age"/>
     </jsp:forward>
     
  </body>
</html>
