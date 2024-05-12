<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="dao.impl.PorderDaoImpl,model.Porder,java.util.List"%>
<%
List<Porder> l=new PorderDaoImpl().selectAll();

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
	<form action="../DeletePorderController" method="post">
		<table width=400 align=center border=1>
			<tr>
				<td align=center>
				id:<input type="text" name="id" size=5>
				
				<input type="submit" value="確定">
				
		</table>
	</form>
	<hr>
	<table width=400 align=center border=1>
		<tr>
			<td>id<td>會員編號<td>訂單編號<td>A<td>B<td>C
			<%
			for(Porder p:l)
			{
				out.println("<tr><td>"+p.getId()+
						"<td>"+p.getMemberno()+
						"<td>"+p.getPorderno()+
						"<td>"+p.getA()+
						"<td>"+p.getB()+
						"<td>"+p.getC());
						
			}
			
			%>
			<tr>
				<td colspan=7 align=center>
				<a href="porder.jsp">回訂單管理頁</a>
	</table> 
	

</div>
<div class="footer"></div>

</body>
</html>