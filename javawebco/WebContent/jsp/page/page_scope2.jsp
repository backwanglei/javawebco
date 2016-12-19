<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设置page范围的属性</title>
</head>
<body>
<% //设置page属性范围，此属性只在当前的jsp页面中起作用
pageContext.setAttribute("name", "王磊");
pageContext.setAttribute("birthday", new Date());
%>
<jsp:forward page="page_scope3.jsp"/>
</body>
</html>