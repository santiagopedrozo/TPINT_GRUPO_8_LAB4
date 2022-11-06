<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entidades.Provincias" %>  
<%@ page import="entidades.Localidades" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrar usuarios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="MasterPageAdmin.html" %>
	<br>
	<div class="container-fluid" style="width:95%;">
        <div class="card text-center">
            <div class="card-header "><h5>Usuarios</h5></div>
            <table class="table table-hover" style="font-size: 11px;">
                <thead>
                    <tr>
                      <th> </th> 
                      <th>DNI</th>   
                      <th>CUIL</th> 
                      <th>Nombre</th> 
                      <th>Apellido</th>
                      <th>Sexo</th> 
                      <th>Nacionalidad</th> 
                      <th>Fecha de nacimiento</th> 
                      <th>Direcci�n</th>
                      <th>Provincia</th>
                      <th>Localidad</th>
                      <th>Email</th>
                      <th>Tel�fono</th> 
                      <th>Tipo de usuario</th> 
                      <th>Usuario</th>
                      <th>Contrase�a</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">
                            <button type="button" class="btn btn-outline-success btn-sm">
                                <i class="fa-solid fa-pen-to-square"></i>
                            </button>
                            <button type="button" class="btn btn-outline-danger btn-sm">
                                <i class="fa-solid fa-trash"></i>
                            </button>
                        </th>  
                        <td>44724905</td>  
                        <td>20447249058</td>
                        <td>Santiago</td>  
                        <td>Pedrozo</td> 
                        <td>Masculino</td>
                        <td>Mexicano</td>
                        <td>23/01/2003</td>
                        <td>Juncal 2468</td>
                        <td>Buenos Aires</td>
                        <td>San Fernando</td>
                        <td>santiagopedrozo@hotmail.com</td>
                        <td>1122112211</td>
                        <td>Est�ndar</td>
                        <td>santito123</td>
                        <td>Messi2022</td> 
                    </tr>
                </tbody>
                
            </table>
        
            <div class="card-footer">
              <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
          </div>
        </div>
      </div>
    
      <br>
      
      <br>
      <%@ include file="AgregarUsuario.html" %>
      <br>
      <%@ include file="FooterPage.html" %>
      
</body>
</html>