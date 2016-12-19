<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>输出list集合</title>
</head>
<body>
<%
List<String> list=new ArrayList<String>();
list.add("合肥");
list.add("上海");
list.add("北京");
list.add("西安");
list.add("杭州");
pageContext.setAttribute("list", list);
%>
<h3>输出集合：
<c:forEach items="${list }" var="men">
${men}
</c:forEach>
</h3>
</body>
</html>