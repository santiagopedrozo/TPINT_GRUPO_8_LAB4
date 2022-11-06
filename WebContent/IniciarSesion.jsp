<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Iniciar sesión</title>
</head>
<body>
<H1> <b>  <p style="text-align:center;">Bienvenido al banco Brusafa, tu banco de confianza! </b></H1>
<form method="get" action="Inicio.jsp">
<<<<<<< Updated upstream
<p style="text-align:center;"> Ingrese sus credenciales para poder ingresar
<br> <br>
Usuario:  <input type="text" placeholder="Ingrese usuario" name="txtUsuario" />
<br> <br>
Contraseña:  <input type="password" placeholder="Ingrese contraseña" name= "txtContraseña" />
<br> <br>
<input type="submit" name= "btnIniciar" value="Iniciar sesión"/>  
</p>
=======


<div style="width: 40%; margin: auto">
      <div class="card text-center">
        <div class="card-header">Iniciar sesión</div>
        <div class="card-body">
          <form method="get" action="ServletUsuarios.jsp" class="row">
            <div class="col-md-12">
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtUsuario"
                  placeholder="-"
                />
                <label for="floatingInput">Usuario</label>
              </div>
            </div>

            <div class="col-md-12">
              <div class="form-floating mb-3">
                <input
                  type="password"
                  class="form-control"
                  id="floatingInput"
                  name= "txtContraseña"
                  placeholder="-"
                />
                <label for="floatingInput">Contraseña</label>
              </div>
            </div>

            <div class="col-md-12">
              <button
                type="submit"
                class="btn btn-outline-primary form-control btn-lg"
                name="btnIniciar"
              >
                Ingresar
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
>>>>>>> Stashed changes
</form>
</body>
</html>