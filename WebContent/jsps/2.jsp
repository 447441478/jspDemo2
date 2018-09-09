<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>JSP中的几个标签</title>
  </head>
  
  <body>
     <h2>jsp:forward之后的结果页面</h2>
     Name:<%=request.getAttribute("name") %> <br>
     nm:<%=request.getParameter("nm") %>  <br>
     age:<%=request.getParameter("age") %>  <br>
  </body>
</html>
