
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request属性范围</title>
</head>
<body>
<%
/* request.setCharacterEncoding("UTF-8"); */
request.setAttribute("name", "王磊");
request.setAttribute("birthday", new Date());
%>
 <%-- <jsp:forward page="request_scope2.jsp"/>  --%>
<a href="request_scope2.jsp">通过超链接取得属性</a>
<!-- 这属于客户端跳转 -->
</body>
</html>