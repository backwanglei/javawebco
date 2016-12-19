<%@page import="javax.sound.midi.MidiDevice.Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestreceieve接收表单信息</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String content=request.getParameter("info");
%>
<h2>内容：<%=content %></h2>
</body>
</html>