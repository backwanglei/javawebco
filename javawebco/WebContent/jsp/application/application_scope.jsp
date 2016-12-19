<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application属性范围</title>
</head>
<body>
<%
//将一个属性设置到整个服务器
application.setAttribute("name", "王磊");
application.setAttribute("birthday", new Date());
%>
<a href="application_scope2.jsp">通过超链接跳转取得属性</a>
</body>
</html>