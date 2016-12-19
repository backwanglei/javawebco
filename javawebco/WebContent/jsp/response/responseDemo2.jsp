<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>页面跳转</title>
</head>
<body>
<h3>3秒后跳转回主页，如果没有跳转，请点击<a href="http://www.baidu.com">这里</a></h3>
<%
response.setHeader("refresh", "3;URL=http://www.baidu.com");
%> 
</body>
</html>