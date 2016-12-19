<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>按照指定规则拆分字符串</title>
</head>
<body>
<%
String city="xis.saj-usda.sdks,sjns;ss";
String hu="ioupklpjkplipmn";
pageContext.setAttribute("city", city);
pageContext.setAttribute("hu", hu);
%>
</body>
<h3>输出分割后的字符串：
<c:forTokens items="${city }" delims=".-,;" var="men">
${men }、
</c:forTokens>
</h3>
<h3>输出分割后的字符串：
<c:forTokens items="${hu}" delims="p" var="men">
${men }、
</c:forTokens>
</h3>
</html>