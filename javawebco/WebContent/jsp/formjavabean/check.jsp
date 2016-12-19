<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="reg" class="javabe.Register" scope="request"></jsp:useBean>
<jsp:setProperty property="name" name="reg"/>
<jsp:setProperty property="age" name="reg"/>
<jsp:setProperty property="email" name="reg"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息验证</title>
</head>
<%
if(reg.isVaildate()){
%>
<jsp:forward page="success.jsp"/>
<%
}else{
%>
<jsp:forward page="index.jsp"/>	
<% 
}
%>


<body>

</body>
</html>