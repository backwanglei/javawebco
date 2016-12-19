<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% request.setCharacterEncoding("UTF-8");%>
   <%@page import="javabe.BookBean" %>
   <jsp:useBean id="book" class="javabe.BookBean">
   <jsp:setProperty property="bookName" name="book"/>
   <jsp:setProperty property="bookNum" name="book"/>
   </jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bookReceive</title>
</head>
<body>
<p>图书订购清单</p>
<hr/>
书名：<%=book.getBookName()%>
数量：<%=book.getBookNum()%>
</body>
</html>