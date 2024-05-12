<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="s" class="com.listener.Student" />
	<jsp:setProperty name="s" property="name" value="aaa" />
	<hr>
	name=<jsp:getProperty name="s" property="name" />
	<hr>
	<c:out value="hello jsp jstl" />
</body>
</html>