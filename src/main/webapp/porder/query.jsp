<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.MemberQuerySum,dao.impl.PorderDaoImpl,java.util.List"%>
<%
/*
1.request-->startSum , endSum-->String
2.檢查-->!="" , null
3.true-->轉型-->List-->selectBySum
4.false-->queryAll
*/


String StartSum=request.getParameter("startSum");
String EndSum=request.getParameter("endSum");

List<MemberQuerySum> l=null;

if(StartSum!="" && StartSum!=null && EndSum!="" && EndSum!=null)
{
	int S=Integer.parseInt(StartSum);
	int E=Integer.parseInt(EndSum);
	l=new PorderDaoImpl().selectBySum(S, E);
	
}
else
{
	l=new PorderDaoImpl().queryAll();
}








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
	<form action="query.jsp" method="post">
		<table width=400 align=center border=1>
			<tr>
				<td align=center>
				請輸入金額 
				從:<input type="text" name="startSum" size=5>
				到:<input type="text" name="endSum" size=5>
				<input type="submit" value="確定">
				
		</table>
	</form>
	<hr>
	<table width=400 align=center border=1>
		<tr>
			<td>id<td>會員編號<td>訂單編號<td>A<td>B<td>C<td>金額
			<%
			for(MemberQuerySum p:l)
			{
				out.println("<tr><td>"+p.getId()+
						"<td>"+p.getMemberno()+
						"<td>"+p.getPorderno()+
						"<td>"+p.getA()+
						"<td>"+p.getB()+
						"<td>"+p.getC()+
						"<td>"+p.getSum());
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