<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.listener.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	x=${X1}
	<br>
	<%
	Student s = new Student("hhh");
	out.println("name=" + s.getName());

	s.setName("tea");
	out.println("name=" + s.getName());
	%>
	<hr>
	<a href="test3.jsp">test3</a>



</body>
</html>