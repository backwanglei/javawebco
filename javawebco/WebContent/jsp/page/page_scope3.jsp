<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转之后从page中取得属性</title>
</head>
<body>
<%
//子类 子类对象=(子类)父类实例
String username=(String)pageContext.getAttribute("name");//向下转型
Date userbirthday=(Date)pageContext.getAttribute("birthday");
%>
<h2>姓名：<%=username %></h2>
<h2>生日：<%=userbirthday %></h2>
<% //取出的值为空 ，page只在当前页面中生效 %>
</body>
</html>