<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>set标签</title>
</head>
<body>
<c:set var="name" value="wanglei" scope="page"/>
${ '${'}pageScope.name }:${pageScope.name }<br/>
<c:set var="name2" scope="page">hehe</c:set>
${ '${'}pageScope.name2 }:${pageScope.name2 }
</body>
</html>