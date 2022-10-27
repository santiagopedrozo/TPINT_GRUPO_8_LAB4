<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<H1> <b> <p style="text-align:center;"> Registrarse </b></H1>
<p style="text-align:center;">
DNI  <input type="text" placeholder="Ingrese DNI" name="txtDNI" />  <br> <br> 
CUIL:  <input type="text" placeholder="Ingrese CUIL" name="txtCUIL" /> <br> <br>
Nombre:  <input type="text" placeholder="Ingrese nombre" name="txtNombre" /> <br> <br>
Apellido:  <input type="text" placeholder="Ingrese apellido" name="txtApellido" /> <br> <br>
Sexo:  <select name="ddlSexo">
			<option value=1>Masculino</option>
			<option value=2>Femenino</option>
		</select> <br>  <br> 
		
Nacionalidad: <select name="dllNacionalidad"> </select> <br> <br> 
Fecha de nacimiento:  <input type="date" name="Fecha"/> <br> <br>
Dirección:  <input type="text" placeholder="Ingrese dirección" name="txtDireccion" /> <br> <br>
Localidad: <select name="dllLocalidad"> </select> 
Provincia: <select name="dllProvincia"> </select> <br> <br>
Correo electrónico:  <input type="email" placeholder="Ingrese correo electrónico" name="txtEmail" /> <br> <br>
Teléfono:  <input type="number" placeholder="Ingrese teléfono" name="txtTelefono" /> <br> <br>
Usuario:  <input type="text" placeholder="Ingrese usuario" name="txtUsuario" /> <br> <br>
Contraseña:  <input type="password" placeholder="Ingrese contraseña" name= "txtContraseña" /> <br> <br>
<input type="submit" name="btnRegistrarse" value="Registrarse"/>

</body>
</html>