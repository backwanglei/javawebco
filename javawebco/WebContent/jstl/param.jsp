<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>接收传递来的参数</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<h3>name参数：${param.name }</h3>
<h3>年龄参数：${param.age }</h3>
</body>
</html>