<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>JSP中的几个标签</title>
  </head>
  
  <body>
     <h2>演示jsp:setProperty标签的接参</h2>
     
     <%request.setCharacterEncoding("utf-8"); %>
     
     <jsp:useBean id="user" class="cn.hncu.domain.Person"></jsp:useBean>
     
     <!-- 通过jsp:setProperty标签进行一个个属性单独获取参数与设置属性值 -->
     <%--当前参数提交页面的参数名取"nm"时
        <jsp:setProperty property="name" name="user" param="nm"/>
     --%>
        <jsp:setProperty property="name" name="user" param="name"/>
        <jsp:setProperty property="age" name="user" param="age"/>
       ${user} <br>
       
       <!-- 如果前面页面提交的参数名和后台Bean的属性变量名完全一致，可进行批量获参与封装属性值 -->
       <jsp:useBean id="u2" class="cn.hncu.domain.Person"></jsp:useBean>
       <jsp:setProperty property="*" name="u2"/>
        222: ${u2} <br>
        
  </body>
</html>
