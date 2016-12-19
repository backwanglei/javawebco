<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<center><form  name="myform"action="loginReceive.jsp" method="post">
<span>用户名：</span><input name="userName" type="text"  title="请输入用户名" size="25"/>
<br/>
<p></p>
<span>密码：</span><input name="passWord" type="password" title="请输入密码" size="20"/>
<br/>
<p></p>
<input name="submit" type="submit" value="登陆">
<input name="reset"    type="reset" value="重置信息">
</form>
</center>
</body>
</html>