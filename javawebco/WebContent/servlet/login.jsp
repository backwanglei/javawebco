<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>请输入用户信息</h2>
<br/>
<form action="<%=request.getContextPath()%>/servlet/MyLoginServlet"
method="post" >
用户名：<input type="text" name="usename"><br/>
密码：<input type="password" name="password"><br/>
<input type="submit" value="提交">
<input type="reset" value="重置">
</form>
</body>
</html>