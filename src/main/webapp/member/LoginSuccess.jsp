<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.Member"%>
<%
Member m = (Member) session.getAttribute("M");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="header"><jsp:include page="../title.jsp" /></div>
	<div class="navigater"><jsp:include page="../navigater.jsp" /></div>
	<div class="content">

		<h1>
			<%=m.getName()%>,登入成功
		</h1>
		<a href="../porder/porder.jsp">進入購物</a>

	</div>
	<div class="footer"><jsp:include page="../end.jsp" /></div>
</body>
</html>