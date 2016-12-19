<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="reg" class="javabe.Register" scope="request"/>
<jsp:setProperty property="name" name="reg"/>
<jsp:setProperty property="age" name="reg"/>
<jsp:setProperty property="email" name="reg"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册表单</title>
</head>
<body>
<form action="check.jsp" method="post">
用户名：<input type="text" name="name" >
<%=reg.getErrorMsg("errname") %><br/>
年&nbsp;&nbsp;龄<input type="text" name="age">
<%=reg.getErrorMsg("errage") %><br/>
邮箱地址：<input type="text" name="email">
<%=reg.getErrorMsg("erremail") %><br/>
<input type="submit" value="注册">
<input type="reset" value="重置">
</form>
</body>
</html>