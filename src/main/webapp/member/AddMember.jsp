<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="header"><jsp:include page="../title.jsp"/></div>
<div class="navigater"><jsp:include page="../navigater.jsp"/></div>
<div class="content">
<form action="../AddMemberController" method="post">
	<table width=400 align=center border=1>
		<tr>
			<td colspan=2 align=center>
			會員基本資料
		<tr>
			<td width=50>會員編號
			<td><input type="text" name="memberno">
		<tr>
			<td width=50>名
			<td><input type="text" name="name">
		<tr>
			<td width=50>帳號
			<td><input type="text" name="username">
		<tr>
			<td width=50>密碼
			<td><input type="text" name="password">
		<tr>
			<td width=50>地址
			<td><input type="text" name="address">
		<tr>
			<td width=50>電話
			<td><input type="text" name="phone">
		<tr>
			<td colspan=2 align=center>
			<input type="submit" value="ok">
	</table>

</form>



</div>
<div class="footer"><jsp:include page="../end.jsp"/></div>
</body>
</html>