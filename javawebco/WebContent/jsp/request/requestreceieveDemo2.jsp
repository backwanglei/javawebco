<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request接收多个表单内容</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String textname=request.getParameter("uname");
String inst[]=request.getParameterValues("inst");
%>
<h3>编号：<%=id %></h3>
<h3>姓名：<%=textname %></h3>
<%
if(inst!=null){
%>
<h3>兴趣：
<%
for(int x=0;x<inst.length;x++){
%>
  <%=inst[x] %>
<%
}
%>
</h3>
<%
}
%>
</body>
</html>