<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hello</title>
</head>
<body>
<h3><c:out value="hello world"></c:out></h3>
<%
pageContext.setAttribute("info", "wanglei");
%>
<h3>属性存在:<c:out value="${info}"/></h3>
<h3>属性不存在:<c:out value="${ref}" default="没有此内容"/></h3>
<h3>属性不存在:<c:out value="${ref}">没有此内容！</c:out></h3>


</body>
</html>