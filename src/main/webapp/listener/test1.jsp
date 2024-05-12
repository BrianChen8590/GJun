<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Integer x = 100;
session.setAttribute("X1", x);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	URL=<%=application.getInitParameter("URL")%><br> 
	X=<%=application.getInitParameter("X")%><br>
	Y=<%=application.getInitParameter("Y")%><br> 
	ANS=<%=application.getAttribute("ANS")%>
	<hr>
	x=${X1}
	<br> x+20=${X1+20}
	<br> x*20=${X1*20}
	<br>
	<a href="test2.jsp">tet2</a>
</body>
</html>