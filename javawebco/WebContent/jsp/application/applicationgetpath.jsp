<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>得到绝对目录</title>
</head>
<body>
<%
String path=application.getRealPath("/");
String path2=this.getServletContext().getRealPath("/");
%>
<h3>真实路径为：<%=path %></h3>
<h3>真实路径为：<%=path2 %></h3>
</body>
</html>