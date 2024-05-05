<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.Member,model.Porder"%>
<%
Member m = (Member) session.getAttribute("M");
String Porderno = request.getParameter("porderno");
int a = Integer.parseInt(request.getParameter("A"));
int b = Integer.parseInt(request.getParameter("B"));
int c = Integer.parseInt(request.getParameter("C"));

Porder p = new Porder(m.getMemberno(), Porderno, a, b, c);
session.setAttribute("P", p);
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
	<div class="navigater"></div>
	<div class="content">
		<table width=550 align=center border=1>
			<tr>
				<td colspan=2 align=center>
					<h3><%=m.getName()%>
						, 這是你的訂單詳細資料
					</h3>
			<tr>
				<td width=100>訂單號碼
				<td><%=p.getPorderno()%>
			<tr>
				<td>客戶編號
				<td><%=p.getMemberno()%>
			<tr>
				<td>A商品
				<td><%=p.getA()%>
			<tr>
				<td>B商品
				<td><%=p.getB()%>
			<tr>
				<td>C商品
				<td><%=p.getC()%>
			<tr>
				<td>共
				<td><%=p.getA() * 150 + p.getB() * 120 + p.getC() * 100%>元
			<tr>
				<td colspan=2 align=center>
				<a href="addPorder.jsp">重新選購</a> 
				<a href="../AddPorderController">確定</a>
			</td>
		</table>
	</div>
	<div class="footer"></div>
</body>
</html>