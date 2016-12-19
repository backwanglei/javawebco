<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>接收文本输入的内容</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");//定义编码方式
String name=request.getParameter("filename");//接收保存的文件名称
String content=request.getParameter("filecontent");//接收保存的文件内容
String filename=this.getServletContext().getRealPath("/")+"note"+
File.separator+name;//拼凑文件名称
File file=new File(filename);//用文件路径加名称来实例化File类对象
if(!file.getParentFile().exists()){//如果有父文件夹 
	file.getParentFile().mkdir();//创建父文件夹
}
PrintStream ps=new PrintStream(new FileOutputStream(file));//定义打印流对象
ps.println(content);//打印接收的文件内容
ps.close();//关闭流
%>
<%
Scanner scan=new Scanner(new FileInputStream(file));//使用scanner读取文件
scan.useDelimiter("\n");//设置读取分割符
StringBuffer buf=new StringBuffer();
while(scan.hasNext()){
	buf.append(scan.next()).append("<br/>");
	}
scan.close();
%>
<%=buf %>
</body>
</html>