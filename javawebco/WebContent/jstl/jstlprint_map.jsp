<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>遍历map接口</title>
</head>
<body>
<%
Map<String,String> map=new HashMap<String,String>();
map.put("111", "aaaa");
map.put("222", "bbbb");
map.put("333", "cccc");
map.put("444", "dddd");
pageContext.setAttribute("map", map);
%>

<c:forEach items="${map }" var="men">
  <h3>${men.key }-->${men.value }</h3>
</c:forEach>

</body>
</html>