<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>遍历数组</title>
</head>
<body>
	<%
		String city[] = { "合肥", "西安", "杭州", "北京", "上海" };
		pageContext.setAttribute("city", city);
	%>
	<h3>
		输出全部：
		<c:forEach items="${city}" var="men">
${men}、
</c:forEach>
	</h3>
	<h3>
		输出全部(间隔为2);
		<c:forEach items="${city}" var="men" step="2">
${men }、
</c:forEach>
	</h3>
	<h3>
		输出前两个：
		<c:forEach items="${city }" var="men" begin="0" end="1">
${men }、
</c:forEach>
	</h3>
</body>
</html>