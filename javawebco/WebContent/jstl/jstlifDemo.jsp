<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>判断语句</title>
</head>
<body>
<%
pageContext.setAttribute("ref", "hello");
%>
<c:if test="${pageScope.ref=='hello' }" var="res1" scope="page">
<h3>欢迎${pageScope.ref }光临！</h3>
</c:if>
<c:if test="${10<30 }" var="res2">
<h3>10比30小！</h3>
</c:if>
</body>
</html>