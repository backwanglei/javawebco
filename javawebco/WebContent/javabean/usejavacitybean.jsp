<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8");%>
  <jsp:useBean id="city" class="javabe.CityBean" scope="page"/>
  <jsp:setProperty property="cityname" name="city"/>
  <jsp:setProperty property="age" name="city"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>接收信息</title>
</head>
<body>

<h3>居住城市:<%=city.getCityname() %></h3>
<h3>居住年限:<%=city.getAge() %></h3>
</body>
</html>