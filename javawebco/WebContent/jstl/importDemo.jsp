<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>向其他页面传递参数</title>
</head>
<body>
<c:import url="param.jsp" charEncoding="UTF-8">
<c:param name="name" value="王磊"></c:param>
<c:param name="age" value="23"></c:param>
</c:import>
</body>
</html>