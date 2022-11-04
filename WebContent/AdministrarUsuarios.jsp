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
                      <th>Direcciï¿½n</th>
                      <th>Provincia</th>
                      <th>Localidad</th>
                      <th>Email</th>
                      <th>Telï¿½fono</th> 
                      <th>Tipo de usuario</th> 
                      <th>Usuario</th>
                      <th>Contraseï¿½a</th>
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
                        <td>Estï¿½ndar</td>
                        <td>santito123</td>
                        <td>Messi2022</td> 
                    </tr>
                </tbody>
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
                        <td>Estï¿½ndar</td>
                        <td>santito123</td>
                        <td>Messi2022</td> 
                    </tr>
                </tbody>
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
                        <td>Estï¿½ndar</td>
                        <td>santito123</td>
                        <td>Messi2022</td> 
                    </tr>
                </tbody>
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
                        <td>Estï¿½ndar</td>
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
      <div class="container-fluid" style="width:50%;">
        <div class="card text-center">
            <div class="card-header"><h5>Crear y asignar usuario</h5></div>
            <div class="card-body" style="font-size: 13px;">
                <form name="formAgregarUsr" method="POST" action="servletUsuarios" class="row">
                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="text" 
                            name="txtDNI" 
                            class="form-control" 
                            id="floatingInput" placeholder="-"
                            oninput="this.value =this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" 
                            minlength="7" 
                            maxlength="8"
                            placeholder="-"
                            required
                            >
                            <label for="floatingInput">DNI</label>
                        </div>
                    </div>
               
                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="text" name="txtCUIL" class="form-control" id="floatingInput" placeholder="-" 
                            oninput="this.value =this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" 
                            minlength="11"
                            maxlength="11"
                            placeholder="-"
                            required
                            >
                            <label for="floatingInput">CUIL</label>
                        </div>
                    </div>
    
                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="text" name="txtNombre" class="form-control" id="floatingInput" placeholder="-" required>
                            <label for="floatingInput">Nombre</label>
                        </div>
                    </div>
               
                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="text" name="txtApellido" class="form-control" id="floatingInput" placeholder="-" required>
                            <label for="floatingInput">Apellido</label> 
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="tel"  name="txtTelefono"class="form-control"  id="floatingInput" placeholder="-"required>
                            <label for="floatingInput">Telï¿½fono</label>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="email" name="txtEmail" class="form-control"  id="floatingInput" placeholder="-" required>
                            <label for="floatingInput">Email</label>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-floating">
                            <select name="ddlTipo" id="" class="form-select" id="floatingInput" placeholder="-" required>
                            <option value=false> Estandar </option>
                            <option value=true> Admin </option>
                            </select>
                            <label for="floatingSelect">Tipo de usuario</label>
                        </div>
                    </div>
               		
               		  <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="text" name="txtUsuario" class="form-control" id="floatingInput" placeholder="-" required>
                            <label for="floatingSelect">Usuario</label>
                        </div>
                    </div>
               		
                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="text" name="txtContrasenia" class="form-control" id="floatingInput" placeholder="-" required>
                            <label for="floatingSelect">Contraseña</label>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-floating mb-3">
                            <input type="text" name="txtDireccion" class="form-control" id="floatingInput" placeholder="-" required>
                            <label for="floatingSelect">Direccion</label>
                        </div>
                    </div>
               
                    <div class="col-md-4">
                        <div class="form-floating mb-3">
                            <input class="form-control"type="date" name="Fecha"/>
                            <label for="floatingSelect">Nacimiento</label>
                        </div>
                    </div>
               
                    <div class="col-md-4" >
                        <label class="form-label">Sexo</label>
                        <br>
                        <div class="form-check form-check-inline">
                            <input type="radio" class="form-check-input" name="rbSexo" checked>
                            <label class="form-check-label">Hombre</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="radio" class="form-check-input" name="rbSexo">
                            <label class="form-check-label">Mujer</label>
                        </div>
                    </div>

                    
                    <div class="col-md-4">
                        <div class="form-floating mb-3">
                            <input type="text" name="txtNacionalidad" class="form-control" id="floatingInput" placeholder="-" required>
                            <label for="floatingSelect">Nacionalidad</label>
                        </div>
                    </div>
                    <% 
                    //Agarramos los parï¿½metros
                    ArrayList<Provincias> provincias = null;
                    ArrayList<Localidades> localidades= null;
                    if (request.getAttribute("provincias")!=null) provincias = (ArrayList<Provincias>) request.getAttribute("provincias");
                    if (request.getAttribute("localidades")!=null) localidades = (ArrayList<Localidades>) request.getAttribute("localidades");
                    %>
						<div class="col-md-6">
	                        <div class="form-floating">

	                            <select name="ddlProvincias"  class="form-select" id="floatingInput" placeholder="-" >
	                                <%
	                                int cProv=0;
									if (provincias!=null)
									for(Provincias prov : provincias){
										cProv++;
										%>
										<option value=<%=cProv%>><%=prov.getDescripcion_Prov()%></option>
										<%
									}
									%>
	                            </select>
	                            <label for="floatingSelect">Provincia</label>
	                             <button type="submit" name="btnAgregarLocs" class="btn btn-outline-primary btn-sm">Ver Locs</button>
	                        </div>
	                    </div>
               
                    <div class="col-md-6">
                        <div class="form-floating">
                            <select name="ddlLocalidades" id="" class="form-select" id="floatingInput" placeholder="-">
                                <% 
                               
								if (localidades!=null)

								for(Localidades loc : localidades){
									
									%>
									<option><%=loc.getDescripcion_Loc()%></option>
									<%
								}
								%>
                            </select>
                            <label for="floatingSelect">Localidad</label>
                        </div>
                    </div>
            
                    <div class="col-md-12">
                        <br>
                        <button type="submit" name="btnAgregarUsr" class="btn btn-outline-primary form-control btn-lg">Dar de alta usuario</button>
                    </div>
              </form>
            </div>
        </div>
        <br>
      </div>
      <br>
      <%@ include file="FooterPage.html" %>
      
</body>
</html>