<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"%>
<%
	Member m=(Member)session.getAttribute("M");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="header"></div>
<div class="navigater">
	<form action="confirm.jsp" method="post">
		<table width=550 align=center border=0>
			<tr>
				<td colspan=3 align=center>
				<h3><%=m.getName()%> , welcome , 請輸入</h3>
			<tr>
			<td colspan=2 align=center>
			<hr>
			<tr>
				<td colspan=3 >
				訂單號碼:<input type="text" name="porderno">
			<tr>
			<td colspan=2 align=center>
			<hr>
			<tr align=center>
				<td>
				A商品<br>
				<img alt="1.jpg" src="../pic/1.jpg"><br>
				<select name="A">
					<option value="0">0
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
					<option value="6">6
					<option value="7">7
					<option value="8">8
					<option value="9">9
					<option value="10">10
				
				
				</select>
				<td>
				B商品<br>
				<img alt="2.jpg" src="../pic/2.jpg"><br>
				<select name="B">
					<option value="0">0
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
					<option value="6">6
					<option value="7">7
					<option value="8">8
					<option value="9">9
					<option value="10">10
				
				
				</select>
				<td>
				C商品<br>
				<img alt="3.jpg" src="../pic/3.jpg"><br>
				<select name="C">
					<option value="0">0
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
					<option value="6">6
					<option value="7">7
					<option value="8">8
					<option value="9">9
					<option value="10">10
				
				
				</select>
		<tr>
			<td colspan=2 align=center>
			<hr>
		<tr>
			<td colspan=2 align=center>
			<input type="submit" value="ok">
		</table>
	</form>
</div>
<div class="content"></div>
<div class="footer"></div>
</body>
</html>