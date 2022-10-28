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

<H1> <b> <p style="text-align:center;"> Transferencias </b></H1>
<form action="Transferencias.jsp" method="get">
<p style="text-align:center;">
Cuenta origen: &nbsp;&nbsp;&nbsp; <select  name="ddlCuentaOrigen"> </select> <br>  <br>
Tipo de transferencia: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="rbTipoTransferencia" value="cp" checked > Cuentas propias &nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name= "rbTipoTransferencia" value="oc" > Otras cuentas <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name= "btnTipoTransferencia" value= "Elegir tipo de transferencia" > <br> <br>
</p>
</form>


<%
String valorRadio="cp";
if (request.getParameter("btnTipoTransferencia")!=null){
	valorRadio=request.getParameter("rbTipoTransferencia");
}
%>


<% if (valorRadio.equals("cp")){ %> Cuenta destino &nbsp;&nbsp;&nbsp; <select  name="ddlCuentaDestionPropia"> </select> <br>  <br> 
<%} else if (valorRadio.equals("oc")){  %> CBU de la cuenta destino &nbsp;&nbsp;&nbsp; <input type="text" name= "txtCBU"> <br> <br> <%} %>


Importe a transferir &nbsp;&nbsp;&nbsp; $ &nbsp; <input type="number" name= "txtImporte"> <br> <br>
<input type="submit" name= "btnTransferir" value= "Transferir">

</body>
</html>