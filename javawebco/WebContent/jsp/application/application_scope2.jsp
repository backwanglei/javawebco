<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application取得属性范围</title>
</head>
<body>
<% 
String username=(String)application.getAttribute("name");
Date userbirthday=(Date)application.getAttribute("birthday");
%>
<h2>姓名：<%=username %></h2>
<h2>生日：<%=userbirthday %></h2>
</body>
</html>