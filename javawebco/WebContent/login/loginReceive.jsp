<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginReceive</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("userName");
String pwd=request.getParameter("passWord");
if(name.equals("王磊")&&pwd.equals("993623")){
%>
     <jsp:forward page="date.jsp"/>
     <%
}else{
	%>
	<jsp:forward page="loginFaild.html"/>
<% 
}
%>   

</body>
</html>