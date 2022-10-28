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
<form method="get" action="servletTransferencias" >
<H1> <b> <p style="text-align:center;"> Transferencias </b></H1>
Cuenta origen: &nbsp;&nbsp;&nbsp; <select  name="ddlCuentaOrigen"> </select> <br>  <br>
Tipo de transferencia: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name= "rbTipoTransferencia" value="Cuentas propias"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name= "rbTipoTransferencia" value="Otras cuentas"/>
</form>
</body>
</html>