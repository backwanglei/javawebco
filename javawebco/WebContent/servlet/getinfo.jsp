<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获得信息</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<h2>session属性：<%=session.getAttribute("name") %></h2>
<h2>session属性:<%=session.getAttribute("info") %></h2>
</body>
</html>