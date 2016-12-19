<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="javabe.*" %>
 <jsp:useBean id="simple" scope="page" class="javabe.SimpleBean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>使用javabean</title>
</head>
<body>
<%-- <%
SimpleBean sim=new SimpleBean();
sim.setName("王磊");
sim.setAge(23);
%> --%>
<%
simple.setName("王磊");
simple.setAge(23);
%>
<h3>姓名：<%=simple.getName() %></h3>
<h3>年龄：<%=simple.getAge() %></h3>
</body>
</html>