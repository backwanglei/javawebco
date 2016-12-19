<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request地址重写的方式进行传递</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String usename=request.getParameter("name");
String pasword=request.getParameter("password");
%>
<h3>姓名：<%=usename %></h3>
<h3>密码：<%=pasword %></h3>




</body>
</html>