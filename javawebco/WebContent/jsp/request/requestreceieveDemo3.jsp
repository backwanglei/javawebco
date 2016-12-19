<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request接收多个表单的内容</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<center>
<table border="1">
<tr>
  <td>参数名称</td>
  <td>参数内容</td>
  </tr>
 <%
 Enumeration enu=request.getParameterNames();//接收全部的参数名称是一个枚举
 while(enu.hasMoreElements()){//判断枚举中是否还有下一个元素，依次取出
	 String paramName=(String)enu.nextElement();//定义接收枚举的元素的内容
%>
<tr>
  <td><%=paramName %></td>
  <td>
 <%
 if(paramName.startsWith("**")){//根据内容判断是才有values还是不采用来接收
	 String paramValues[]=request.getParameterValues(paramName);
	 for(int x=0;x<paramValues.length;x++){
%>	 
      <%=paramValues[x] %>
<% 	
}
 }else{
	 String paramValue=request.getParameter(paramName);
%>
    <%=paramValue %>
<%    
 }
 %>
     </td>
     </tr>
 <% 
 }
 %>


</body>
</html>