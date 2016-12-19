<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session属性范围</title>
</head>
<body>
<%
session.setAttribute("name", "王磊");
session.setAttribute("birthday", new Date());
%>
<!-- 通过超链接进行调转后，地址栏改变，属于客户端跳转 -->
<a href="session_scope2.jsp">通过超链接取得属性</a>
</body>
</html>