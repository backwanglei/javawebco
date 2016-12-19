<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="reg" class="javabe.Register" scope="request"></jsp:useBean>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功页</title>
</head>
<body>
用户名：<jsp:getProperty property="name" name="reg"/></br>
年&nbsp;&nbsp;龄:<jsp:getProperty property="age" name="reg"/>
邮箱地址：<jsp:getProperty property="email" name="reg"/>
</body>
</html>