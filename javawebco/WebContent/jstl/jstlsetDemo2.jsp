<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
  <%@page import="javabe.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>set设置javabean</title>
</head>
<body>
<jsp:useBean id="bookbean" class="javabe.BookBean" scope="request"></jsp:useBean>
<%-- <%
request.setCharacterEncoding("UTF-8");
request.setAttribute("bookbean", bookbean);
%> --%>
<c:set value="斗破苍穹" target="${bookbean}" property="bookName"/>
<h3>书名：${bookbean.bookName }</h3>
</body>
</html>