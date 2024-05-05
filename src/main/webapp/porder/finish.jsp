<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member,model.Porder"
    %>
<%
	Member m=(Member)session.getAttribute("M");
	Porder p=(Porder)session.getAttribute("P");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">

<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

</head>
<body>
<div class="header"></div>
<div class="navigater"></div>
<div class="content">
	<table width=400 align=center border=1>
		<tr>
			<td colspan=3>
			<h3>訂購完成,訂單編號:<%=p.getPorderno() %></h3>
		<tr>
			<td colspan=3>
			客戶編號:<%=m.getMemberno()%> ,姓名:<%=m.getName() %><br>
			送貨地點:<%=m.getAddress() %> ,連絡電話:<%=m.getPhone() %>
		<tr>
			<td>品名<td>數量<td>小計($)
		<tr>
			<td>A($150)<td><%=p.getA() %><td><%=p.getA()*150 %>
		<tr>
			<td>B($120)<td><%=p.getB() %><td><%=p.getB()*120 %>
		<tr>
			<td>C($100)<td><%=p.getC() %><td><%=p.getC()*100 %>
		<tr>
			<td colspan=3 align=center>
			共<%=p.getA()*150+p.getB()*120+p.getC()*100 %>元
		<tr>
			<td colspan=3 align=center>
			<a href="porder.jsp">回訂單管理頁</a>
			<DIV ALIGN="CENTER">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
ONCLICK="varitext()">
</FORM>
</DIV>
			
			
	</table>
	


</div>
<div class="footer"></div>
</body>
</html>