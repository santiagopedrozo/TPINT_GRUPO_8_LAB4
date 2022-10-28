<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="MasterPage.html" %>
</head>
<body>
<H1> <b> <p style="text-align:center;"> Cuentas </b></H1>
<form action="Cuentas.jsp" method="get">
<p style="text-align:center;">
<table border="1">

<tr> 
	<th>Número de cuenta</th>  
	<th>Tipo de cuenta</th>  
	<th>CBU</th>  
	<th>Saldo</th> 
	<th>Operación</th>
</tr>
<%	
	for (int i=1; i<=3; i++){
%>
<tr> 
	<td><%=i%>  </td> 
	<td>Caja de ahorro</td>   
	<td>111222333<%=i%></td> 
	<td><%=i*10000 %></td> 
	<td> <input type="submit" name= "btnVerMovimientos<%=i%>"value= "Movimientos"> </td>
</tr>
<%		
	}
%>
</table>
</form>

<br> <br>


<%

if (request.getParameter("btnVerMovimientos1")!=null || request.getParameter("btnVerMovimientos2")!=null || request.getParameter("btnVerMovimientos3")!=null){
%>
<table border="1">
	<tr> 
		<th>Fecha</th>  
		<th>Detalle</th>  
		<th>Importe</th>  
		<th>Tipo de movimiento</th> 
	</tr>
	
<%
if (request.getParameter("btnVerMovimientos1")!=null){
%>	
	<tr> 
		<td>11/2/2022</td> 
		<td>Transferencia a Romina</td>   
		<td>300000</td> 
		<td>Transferencia </td> 
	</tr>
	
<%
}
else if (request.getParameter("btnVerMovimientos2")!=null){
%>	
	<tr> 
		<td>30/8/2022</td> 
		<td>Pago de la cuota 2 préstamo</td>   
		<td>15000</td> 
		<td>Préstamo </td> 
	</tr>	
	
<%
}
else{
%>	
	<tr> 
		<td>20/12/2021</td> 
		<td>Transferencia a Nicolás</td>   
		<td>50000</td> 
		<td>Transferencia </td> 
	</tr>	
<%
}
}
%>

</table>
</body>
</html>