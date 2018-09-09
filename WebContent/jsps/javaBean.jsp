<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>JSP中与JavaBean相关的几个标签的使用</title>
  </head>
  
  <body>
     <h2>JSP中与JavaBean相关的几个标签的使用</h2>
     
     <!-- 声明且创建一个JavaBean,该对象名为p , 默认的scope值为page -->
     <jsp:useBean id="p" class="cn.hncu.domain.Person"></jsp:useBean>
     <!--上一句等价于: Person p = new Person();  -->
     
     <%=p.hashCode() %> <br>
     
     <!-- 下面相当于: p.setName("Mike");  -->
     <jsp:setProperty property="name" name="p" value="Mike"/>
     <jsp:setProperty property="age" name="p" value="22"/>
     
     ${p} , <%=p%> <br>
     
     <!-- 下面相当于: p.getName();  -->
     <jsp:getProperty property="name" name="p"/>
     
     <!-- 为Person-Bean添加一个birth属性以了解setProperty与getProperty的一点细节 -->
     <jsp:useBean id="p2" class="cn.hncu.domain.Person" scope="session"></jsp:useBean>
     <jsp:setProperty property="name" name="p2" value="Tom"/>
     <jsp:setProperty property="age" name="p2" value="24"/>
     <!-- 设置属性时，默认只能接收基本数据类型的值。
                       如果有特殊类型如Date则需要自己在Bean类中手动转换。
		    下面一名本质上是调用Bean中的setBirth()完成，而且传参是String，
                       因此必须由一个这样的对应方法来完成信息封装。
      	    注意,当Person类中的birth和setter方法名不遵守规范命名是，
      	    下面的property属性名是以Person类中的setter-getter方法名按sun内省反推 -->
     <jsp:setProperty property="birthday" name="p2" value="2018-09-18"/>
     ${p2},${p2.birthday}<br>
     <jsp:getProperty property="birthday" name="p2"/>
     
     <br><br>
     <!-- 以下演示jsp:setProperty标签的接参用法 -->
     <form action="receiveParam.jsp" method="post">
        <!-- 
           Name:<input type="text" name="nm" /> <br>
         -->
        Name:<input type="text" name="name" /> <br>
        Age:<input type="text" name="age" /> <br>
        <input type="submit" value="提交" />
        
     </form>
     
  </body>
</html>
