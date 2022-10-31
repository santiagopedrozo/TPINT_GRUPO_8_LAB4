<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/3c33daaf69.js" crossorigin="anonymous"></script>
    <title>Iniciar sesion</title>
</head>
<body>

		<H1> <b>  <p style="text-align:center;">Bienvenido al banco Brusafa, tu banco de confianza! </b></H1>
<form method="get" action="Inicio.jsp">
<p style="text-align:center;"> Ingrese sus credenciales para poder ingresar
<br> <br>
Usuario:  <input type="text" placeholder="Ingrese usuario" name="txtUsuario" />
<br> <br>
Contraseña:  <input type="password" placeholder="Ingrese contraseña" name= "txtContraseña" />
<br> <br>
<input type="submit" name= "btnIniciar" value="Iniciar sesión"/>  
</p>
</form>
      
      <%@ include file="FooterPage.html" %>

</body>
</html>