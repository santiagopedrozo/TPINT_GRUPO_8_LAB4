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
<H1> <b> <p style="text-align:center;"> Prestamos </b></H1>
<form action="Prestamos.jsp" method="get">
<p style="text-align:center;">
Movimiento a realizar: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="rbPrestamo" value="1" checked > Pedir préstamo &nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name= "rbPrestamo" value="2" > Pagar préstamo <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name= "btnPrestamo" value= "Aceptar" > <br> <br>
</p>
</form>

<%
String valorRadio="1";
if (request.getParameter("btnPrestamo")!=null){
	valorRadio=request.getParameter("rbPrestamo");
}
%>


<% if (valorRadio.equals("1")){ %>
Importe a pedir: $ &nbsp; <input type="number" name="txtImporte"> <br> <br>
Cuotas del préstamo: <select name="ddlCuotas">
<%for (int i=1; i<=12; i++){ %>
<option value=<%=i%>><%=i%></option>
<%} %>
</select> <br> <br>
Cuenta destino: <select  name="ddlCuentaOrigenPrestamo"> </select> <br>  <br>
<input type="submit" name= "btnPedirPrestamo" value="Solicitar préstamo">


<%} else if (valorRadio.equals("2")){  %> 
Préstamo: <select name="ddlPrestamo">
	<option> Prestamo 1 </option>
	<option> Prestamo 2 </option>
	<option> Prestamo 3 </option>
 </select>
<input type="submit" name= "btnSeleccionar préstamo" value="Seleccionar préstamo">
<br> <br>
Cuotas siguiente por pagar: 3 <br> <br> 
Importe de la cuota: <label for="lblCuota"> $1200.56</label> <br> <br>
Cuenta origen para debitar: <select  name="ddlCuentaOrigenDebito"> </select> <br>  <br>
<input type="submit" name= "btnPagarCuota" value="Pagar">




<%} %>

</body>
</html>