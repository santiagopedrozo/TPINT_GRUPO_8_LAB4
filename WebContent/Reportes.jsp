<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2> Reportes </h2>
	<h3> Movimientos </h3>
	Propietario de cuenta: <input type = "text" name = txtNombre> <br>
	Fecha: <input type = "date" name = "fecha1"><input type = "date" name = "fecha2"><br>
	Tipo: <select name = "ddlTipos" id = "ddlTipos">
		<option value = "Alta de cuenta">Alta de cuenta</option>
		<option value = "Alta de un prestamo">Alta de un préstamo</option>
		<option value = "Pago de prestamo">Pago de préstamo</option>
		<option value = "Transferencia">Transferencia</option>
		</select> <br>
	<div class="container-fluid" style="width:90%;">
        <div class="card text-center">
            <div class="card-header "><h5>Usuarios</h5></div>
            <table class="table table-hover" style="font-size: 12px;">
						<tr>
			<td> ID </td> <td> Fecha </td> <td> Detalle </td> <td> Importe </td> <td> Tipo </td> <td> Cuenta </td>
		</tr>
		<tr>
			
		</tr>
            </table>
        </div>
    </div>

		<tr>
			<td> ID </td> <td> Fecha </td> <td> Detalle </td> <td> Importe </td> <td> Tipo </td> <td> Cuenta </td>
		</tr>
		<tr>
			
		</tr>
	<h3> Clientes </h3>
	Nombre: <input type = "text" name = txtNombre> <br>
	Apellido: <input type = "text" name = txtApellido> <br>
	Nacionalidad: <select name = "ddlNacionalidad" id = "ddlNacionalidad">
		<option value = "Argentina">Argentina</option>
		<option value = "Brasil">Brasil</option>
		<option value = "Uruguay">Uruguay</option>
		<option value = "Paraguay">Paraguay</option>
		</select> <br>
	Provincia: <select name = "ddlProvincias" id = "ddlProvincias">
	</select> <br>
	Localidad: <select name = "ddlLocalidades" id = "ddlLocalidades">
	</select> <br>
	<table border = "1">
		<tr>
			<td> DNI </td> <td> CUIL </td> <td> Nombre </td> <td> Apellido </td> <td> Sexo </td> <td> Nacionalidad </td> <td> Nacimiento </td> <td> Direccion </td> <td> Localidad </td> <td> Provincia </td> <td> Telefono </td> <td> Contraseña </td>
		</tr>
		<tr>
			
		</tr>
	</table> <br>
	<h3> Cuentas</h3>
	Propietario de cuenta: <input type = "text" name = txtNombre> <br>
	Fecha: <input type = "date" name = "fecha1"><input type = "date" name = "fecha2"><br>
	Tipo: <select name = "ddlTiposCuentas" id = "ddlTiposCuentas">
		<option value = "Caja de ahorro">Caja de ahorro</option>
		<option value = "Cuenta corriente">Cuenta corriente</option>
		</select> <br>
	<table border = "1">
		<tr>
			<td> ID </td> <td> Fecha </td> <td> Tipo </td> <td> Numero </td> <td> CBU </td> <td> Saldo </td> <td> Propietario </td>
		</tr>
		<tr>
			
		</tr>
	</table> <br>
	<h3>Prestamos </h3>
	Propietario de cuenta: <input type = "text" name = txtNombre> <br>
	Fecha: <input type = "date" name = "fecha1"><input type = "date" name = "fecha2"><br>
	Importe a pagar por cliente: <input type = "range" name = "rangoImporteAPagar"><br>
	Importe pedido por cliente: <input type = "range" name = "rangoImportePedido"><br>
	Cantidad de cuotas: <input type = "range" name = "rangoCuotas"><br>
	<table border = "1">
		<tr>
			<td> ID </td> <td> Propietario de cuenta </td> <td> Fecha </td> <td> Importe a pagar por cliente </td> <td> Importe pedido </td> <td> Plazo de pago en meses </td> <td> Monto a pagar x cuota </td> <td> Cantidad de cuotas </td>
		</tr>
		
		<tr>
			
		</tr>
	</table> <br>
	

</body>
</html>