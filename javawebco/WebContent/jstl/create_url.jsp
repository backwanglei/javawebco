<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产生一个新的url地址</title>
</head>
<body>
<c:url value="../javabean/bookSelect.html" var="urlinfo">
<c:param name="name" value="wanglei"></c:param>
<c:param name="age" value="23"></c:param>
</c:url>
<a href="${urlinfo }">新的地址</a>
</body>
</html>