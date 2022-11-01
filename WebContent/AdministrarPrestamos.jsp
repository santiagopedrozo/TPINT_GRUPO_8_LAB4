<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> Prestamos </h1>
	Listado de prestamos: 
	<select name = "prestamos" id = "prestamos">  
		<option value = "1"> Prestamo 1 </option>
		<option value = "2"> Prestamo 2 </option>
		<option value = "3"> Prestamo 3 </option>
	</select>
	<br>
	<br>
	<input type = "submit" name = "btnAprobar" value = "SI"> 
	<input type = "submit" name = "btnRechazar" value = "NO">
	<p align = "center">
		Propietario de la cuenta:<label for="lblPropietario"> Juan Carlos Ramirez </label><br>
		Fecha: <label for="lblFecha"> 31/10/2022 </label><br>
		Cantidad de cuotas: <label for="lblCuotas"> 12 </label><br>
		Monto pedido: $<label for="lblMontoPedido"> 200.000 </label><br>
		Monto a pagar por cuota: $<label for="lblMontoXCuota"> 20.000 </label><br>
	</p>
	
	
</body>
</html>