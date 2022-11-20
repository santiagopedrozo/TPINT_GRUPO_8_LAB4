<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entidades.Cuentas" %>
<%@ page import="entidades.Usuarios" %>
<%@ page import="entidades.Movimientos" %>
<%@ page import="entidades.Provincias" %>
<%@ page import="entidades.Prestamos" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Insert title here</title>
    
 <link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#table_id_usuarios').DataTable({
                language: {
                    processing: "Tratamiento en curso...",
                    search: "Buscar&nbsp;:",
                    lengthMenu: "Agrupar de _MENU_ items",
                    info: "Mostrando del item _START_ al _END_ de un total de _TOTAL_ items",
                    infoEmpty: "No existen datos.",
                    infoFiltered: "(filtrado de _MAX_ elementos en total)",
                    infoPostFix: "",
                    loadingRecords: "Cargando...",
                    zeroRecords: "No se encontraron datos con tu busqueda",
                    emptyTable: "No hay datos disponibles en la tabla.",
                    paginate: {
                        first: "Primero",
                        previous: "Anterior",
                        next: "Siguiente",
                        last: "Ultimo"
                    },
                    aria: {
                        sortAscending: ": active para ordenar la columna en orden ascendente",
                        sortDescending: ": active para ordenar la columna en orden descendente"
                    }
                },
                scrollY: 330,
                lengthMenu: [ [5, 25, -1], [10, 25, "All"] ],
                "bLengthChange": false,
                "bFilter": false,
                "bInfo": false,
            });
        });
    </script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $('#table_id_cuentas').DataTable({
                language: {
                    processing: "Tratamiento en curso...",
                    search: "Buscar&nbsp;:",
                    lengthMenu: "Agrupar de _MENU_ items",
                    info: "Mostrando del item _START_ al _END_ de un total de _TOTAL_ items",
                    infoEmpty: "No existen datos.",
                    infoFiltered: "(filtrado de _MAX_ elementos en total)",
                    infoPostFix: "",
                    loadingRecords: "Cargando...",
                    zeroRecords: "No se encontraron datos con tu busqueda",
                    emptyTable: "No hay datos disponibles en la tabla.",
                    paginate: {
                        first: "Primero",
                        previous: "Anterior",
                        next: "Siguiente",
                        last: "Ultimo"
                    },
                    aria: {
                        sortAscending: ": active para ordenar la columna en orden ascendente",
                        sortDescending: ": active para ordenar la columna en orden descendente"
                    }
                },
                scrollY: 330,
                lengthMenu: [ [5, 25, -1], [10, 25, "All"] ],
                "bLengthChange": false,
                "bFilter": false,
                "bInfo": false,
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#table_id_movimientos').DataTable({
                language: {
                    processing: "Tratamiento en curso...",
                    search: "Buscar&nbsp;:",
                    lengthMenu: "Agrupar de _MENU_ items",
                    info: "Mostrando del item _START_ al _END_ de un total de _TOTAL_ items",
                    infoEmpty: "No existen datos.",
                    infoFiltered: "(filtrado de _MAX_ elementos en total)",
                    infoPostFix: "",
                    loadingRecords: "Cargando...",
                    zeroRecords: "No se encontraron datos con tu busqueda",
                    emptyTable: "No hay datos disponibles en la tabla.",
                    paginate: {
                        first: "Primero",
                        previous: "Anterior",
                        next: "Siguiente",
                        last: "Ultimo"
                    },
                    aria: {
                        sortAscending: ": active para ordenar la columna en orden ascendente",
                        sortDescending: ": active para ordenar la columna en orden descendente"
                    }
                },
                scrollY: 330,
                lengthMenu: [ [5, 25, -1], [10, 25, "All"] ],
                "bLengthChange": false,
                "bFilter": false,
                "bInfo": false,
            });
        });
    </script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $('#table_id_prestamos').DataTable({
                language: {
                    processing: "Tratamiento en curso...",
                    search: "Buscar&nbsp;:",
                    lengthMenu: "Agrupar de _MENU_ items",
                    info: "Mostrando del item _START_ al _END_ de un total de _TOTAL_ items",
                    infoEmpty: "No existen datos.",
                    infoFiltered: "(filtrado de _MAX_ elementos en total)",
                    infoPostFix: "",
                    loadingRecords: "Cargando...",
                    zeroRecords: "No se encontraron datos con tu busqueda",
                    emptyTable: "No hay datos disponibles en la tabla.",
                    paginate: {
                        first: "Primero",
                        previous: "Anterior",
                        next: "Siguiente",
                        last: "Ultimo"
                    },
                    aria: {
                        sortAscending: ": active para ordenar la columna en orden ascendente",
                        sortDescending: ": active para ordenar la columna en orden descendente"
                    }
                },
                scrollY: 330,
                lengthMenu: [ [5, 25, -1], [10, 25, "All"] ],
                "bLengthChange": false,
                "bFilter": false,
                "bInfo": false,
            });
        });
    </script>
    
    
    
    
    
  </head>
  <body>
    <%@ include file="MasterPageAdmin.html" %>
    <br>
    <div style="display: flex; justify-content: center">
      <div class="container-fluid" style="width: 40%">
        <div class="card text-center">
          <table
            class="table table-hover"
            style="text-align: start; margin: 1px; font-size: 17px"
          >
        	<form action="servletReportes" method="get">
            <tbody>
              <td><b>Propietario de cuenta remitente:</b></td>
              <td>
              <br><input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtDniRemitenteMovimiento"
                  placeholder = "Dni del propietario"
                />
              </td>
            </tbody>
            <tbody>
              <td><b>Propietario de cuenta receptora:</b></td>
              <td>
              <br><input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtDniReceptorMovimiento"
                  placeholder = "Dni del propietario"
                />
              </td>
            </tbody>
            <tbody>
              <td><b>Importe:</b></td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="importe1Movimiento"
                  placeholder = "Desde"
                /><input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="importe2Movimiento"
                  placeholder = "Hasta"
                />
              </td>
            </tbody>
            <tbody>
              <td><b>Tipo:</b></td>
              <td>
                <select
                  name="ddlTipos"
                  class="form-control"
                  id="floatingInput"
                  id="ddlTiposMovimiento"
                >
                  <option value="-1"></option>
                  <option value="1">Alta de cuenta</option>
                  <option value="2">Alta de un prestamo</option>
                  <option value="3">Pago de prestamo</option>
                  <option value="4">Transferencia</option>
                </select>
              </td>
            </tbody>
            <tbody>
            	<td><b></b></td>
              <td>
                    <button type="submit" class="btn btn-outline-primary form-control" name = "btnFiltrarMovimientos">Filtrar</button>
              </td>
            </tbody>
            <tbody>
            	<td><b></b></td>
              <td>
                    <button type="submit" class="btn btn-outline-primary form-control" name = "btnQuitarFiltrosMovimientos">Quitar filtros</button>
              </td>
            </tbody>
          </form>
          </table>
        </div>
      </div>

      <div class="container-fluid" style="width: 90%">
        <div class="card text-center">
          <div class="card-header"><h5>Movimientos</h5></div>
          <form action= "servletReportes" method="get">
          <table class="table table-hover" id = "table_id_movimientos" style="font-size: 12px">
            <thead>
              <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Detalle</th>
                <th>Importe</th>
                <th>Tipo</th>
                <th>Cuenta</th>
                <th>Cuenta destino</th>
              </tr>
            </thead>
            <tbody>
            <%
            ArrayList<Movimientos> listaMovimientos = null;
            
            if (request.getAttribute("listaMovimientosFiltrada") != null)
            	listaMovimientos = (ArrayList<Movimientos>) request.getAttribute("listaMovimientosFiltrada");
            %>
	            <%
	            if (request.getAttribute("listaMovimientosFiltrada") != null)
		            for (Movimientos movimiento : listaMovimientos)
		            { System.out.println(movimiento);
	            %>
              <tr>   
                <td><%=movimiento.getId_Mov() %></td>
                <td><%=movimiento.getFecha_Mov() %></td>
                <td><%=movimiento.getDetalle_Mov() %></td>
                <td><%=movimiento.getImporte_Mov() %></td>
                <td><%=movimiento.getTiposMov_Mov().getDescripcion_TiposMov() %></td>
                
                <%if (movimiento.getTiposMov_Mov().getId_TiposMov() == 3 || movimiento.getTiposMov_Mov().getId_TiposMov() == 4){ %>
                <th><%=movimiento.getCuenta_Mov().getUsuario_Cuentas().getNombre_Usr() %> <%=movimiento.getCuenta_Mov().getUsuario_Cuentas().getApellido_Usr() %></th>
				<%}else{%>
				<%System.out.println("Este registro no tiene usuario que mande"); %>
				<th> - </th>
				<%}if (movimiento.getTiposMov_Mov().getId_TiposMov() == 1 || movimiento.getTiposMov_Mov().getId_TiposMov() == 2 || movimiento.getTiposMov_Mov().getId_TiposMov() == 4){ %>
                <th><%=movimiento.getCuentaDestino_Mov().getUsuario_Cuentas().getNombre_Usr() %> <%=movimiento.getCuentaDestino_Mov().getUsuario_Cuentas().getApellido_Usr() %></th>
              	<%}else{%>
              	<%System.out.println("Este registro no tiene usuario destino"); %>
              	<th> - </th>
              	<%} %>
              </tr>
              <%}%>
            </tbody>
          </table>
   		</form>
          
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
    </div>
	<br>

    <!-- Parte de clientes -->
    <div style="display: flex; justify-content: center">
      <div class="container-fluid" style="width: 40%">
        <div class="card text-center">
          <table
            class="table table-hover"
            style="text-align: start; margin: 1px; font-size: 17px">
			<form action= "servletReportes" method="get">
            <tbody>
              <td><b>Nombre:</b></td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtNombreCliente"
                />
              </td>
            </tbody>
            <tbody>
              <td><b>Apellido:</b></td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtApellidoCliente"
                />
              </td>
            </tbody>
            <tbody>
              <td><b>Provincia:</b></td>
              <td>
                <select
                  name="ddlProvinciasCliente"
                  class="form-control"
                  id="floatingInput"
                  id="ddlProvinciasCliente"
                >
                <option value = "-1" selected></option>
                  <%
            ArrayList<Provincias> listaProvincias = null;
            
            if (request.getAttribute("listaProvincias") != null)
            	listaProvincias = (ArrayList<Provincias>) request.getAttribute("listaProvincias");
            %>
            <%
            if (request.getAttribute("listaProvincias") != null)
	            for (Provincias provincia : listaProvincias)
	            {
            %>
            	<option value = <%=provincia.getIdProvincia_Prov() %>><%=provincia.getDescripcion_Prov()%> </option>
            <%	} %>
                  
                </select>
              </td>
            </tbody>
            	<td><b></b></td>
              <td>
             <button type="submit" name ="btnFiltrarUser" class="btn btn-outline-primary form-control ">Filtrar</button>
              </td>
            </tbody>
            <tbody>
            	<td><b></b></td>
              <td>
                    <button type="submit" class="btn btn-outline-primary form-control" name = "btnQuitarFiltrosUsuarios">Quitar filtros</button>
              </td>
            </tbody>
            </tbody>
      		</form>
          </table>
        </div>
      </div>
      </div> 
     	
    <% 
    ArrayList <Usuarios> listaUser = null;
	if (request.getAttribute("listaUser") != null)
		listaUser = (ArrayList<Usuarios>)request.getAttribute("listaUser");
	%>
      <div class="container-fluid" style="width: 90%">
        <div class="card text-center">
          <div class="card-header"><h5>Clientes</h5></div>
          <table class="table table-hover" id="table_id_usuarios" style="font-size: 12px">
            <thead>
              <tr>
                <th>DNI</th>   
                <th>CUIL</th> 
                <th>Nombre</th> 
                <th>Apellido</th>
                <th>Sexo</th> 
                <th>Fecha de nacimiento</th> 
                <th>Dirección</th>
                <th>Provincia</th>
                <th>Email</th>
                <th>Teléfono</th> 
                <th>Usuario</th>
                <th>Contraseña</th>
              </tr>
            </thead>
            <tbody>
            <%
              	if (listaUser != null){
              		for(Usuarios user: listaUser){
              			if (user.isTipo_Usr()==false && user.isEstado_Usr()==true){
             %>
              <tr>
                <td><%=user.getDNI_Usr() %> </td>
                <td><%=user.getCUIL_Usr() %></td>                                            
                <td><%=user.getNombre_Usr() %></td>
                <td><%=user.getApellido_Usr() %></td>                       
                <td><%=user.getSexo_Usr() %></td>                                
                <td><%=user.getFechaNacimiento_Usr()%></td>           
                <td><%=user.getDireccion_Usr()%></td>           
                <td><%=user.getProvincia_Usr().getDescripcion_Prov()%></td>                 
                <td><%=user.getEmail_Usr() %></td>           
                <td><%=user.getTelefono_Usr() %></td>
                <td><%=user.getUsuario_Usr() %></td>  
                <td><%=user.getContrasenia_Usr() %></td>  
              </tr>
              <%
              		}
              }
              }
              %>
            </tbody>
          </table>         
        </div>
      </div>
    </div>
    <br>

    <!-- PArte de CUENTAS -->

    <div style="display: flex; justify-content: center">
      <div class="container-fluid" style="width: 40%">
        <div class="card text-center">
          <table
            class="table table-hover"
            style="text-align: start; margin: 1px; font-size: 17px"
          >
          <form action= "servletReportes" method="get">
            <tbody>
              <td><b>Propietario de cuenta:</b></td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtNombreCuentas"
                />
              </td>
            </tbody>
            <tbody>
              <td><b>Tipo:</b></td>
              <td>
                <select
                  name="ddlTiposCuentas"
                  class="form-control"
                  id="floatingInput"
                  id="ddlTipos"
                >
                  <option value="-1" selected></option>
                  <option value=1>Caja de ahorro</option>
                  <option value=2>Cuenta corriente</option>               
                </select>
              </td>
            </tbody>
            <tbody>
              <td><b>Saldo</b></td>
              <td>
                Desde <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtSaldoMenorCuenta"
                  placeholder = "Desde"
                />Hasta<input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtSaldoMayorCuenta"
                  placeholder = "Hasta"
                />
              </td>
            </tbody>
            <tbody>
            	<td><b></b></td>
              <td>
                    <button type="submit" name = "btnFiltrarCuentas" class="btn btn-outline-primary form-control ">Filtrar</button>
              </td>
            </tbody>
            <tbody>
            	<td><b></b></td>
              <td>
                    <button type="submit" class="btn btn-outline-primary form-control" name = "btnQuitarFiltrosCuentas">Quitar filtros</button>
              </td>
            </tbody>
            </form>
          </table>
        </div>
      </div>
      
      
      <%
		ArrayList <Cuentas> listaCuentas = null;
		if (request.getAttribute("listaCuentas")!=null)
			listaCuentas=(ArrayList <Cuentas>)request.getAttribute("listaCuentas");
	%>  
      <div class="container-fluid" style="width: 90%">
        <div class="card text-center">
          <div class="card-header"><h5>Cuentas</h5></div>
          <table class="table table-hover" id="table_id_cuentas" style="font-size: 12px">
            <thead>
              <tr>
                <th>Nro de cuenta</th>  
                <th>CBU</th> 
                <th>Tipo de cuenta</th>  
                <th>DNI</th>
                <th>Fecha creación</th> 
                <th>Saldo</th>
              </tr>
            </thead>
             <tbody>
            <%
                if (listaCuentas!=null)
                	for(Cuentas cuenta : listaCuentas){
                		if (cuenta.isEstado_Cuentas()==true){
                %>
              <tr>
                <td><%=cuenta.getNro_Cuentas() %> </td> 
                <td><%=cuenta.getCBU_Cuentas() %></td>
                <td><%=cuenta.getTipoCuenta_Cuentas().getDescripcion_TipoCuenta() %></td>  
                <td><%=cuenta.getUsuario_Cuentas().getDNI_Usr() %></td>
                <td><%=cuenta.getFechaCreacion_Cuentas() %></td>   
                <td><%=cuenta.getSaldo_Cuentas() %></td>
              </tr>
              <%
              	}
              }
              %>
            </tbody>
          </table>
        </div>
   
      </div>   
    </div>
	<br>
    <!-- PARTE DE PRESTAMOS-->

    <div style="display: flex; justify-content: center">
      <div class="container-fluid" style="width: 40%">
        <div class="card text-center">
          <table
            class="table table-hover"
            style="text-align: start; margin: 1px; font-size: 14px"
          >
          <form action= "servletReportes" method="get">
            <tbody>
              <td><b>Propietario de cuenta:</b></td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtNombrePrestamo"
                />
              </td>
            </tbody>
            <tbody>
              <td><b>Importe a pagar por cliente:</b></td>
              <td style="font-size: 12px;">
                <div class="form-floating mb-3">
                    <input type="number" class="form-control form-control-sm" id="floatingInput" placeholder="-" name="txtImportePagar1">
                    <label for="floatingSelect">Desde</label>
                </div>
                
                <div class="form-floating mb-3">
                    <input type="number" class="form-control form-control-sm" id="floatingInput" placeholder="-" name="txtImportePagar2">
                    <label for="floatingSelect">Hasta</label>
                </div>
              </td>
            </tbody>
            <tbody>
              <td><b>Importe pedido por cliente:</b></td>
              <td style="font-size: 12px;">
           
                <div class="form-floating mb-3">
                    <input type="number" class="form-control form-control-sm" id="floatingInput" placeholder="-" name="txtImportePedido1">
                    <label for="floatingSelect">Desde</label>
                </div>
                
                <div class="form-floating mb-3">
                    <input type="number" class="form-control form-control-sm" id="floatingInput" placeholder="-" name="txtImportePedido2">
                    <label for="floatingSelect">Hasta</label>
                </div>

              </td>
            </tbody>
            <tbody>
              <td><b>Cantidad de cuotas:</b></td>
              <td>
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtCuotasPrestamo"
                />
              </td>
            </tbody>
            <tbody>
            	<td><b></b></td>
              <td>
                <button type="submit" name = "btnFiltrarPrestamos" class="btn btn-outline-primary form-control ">Filtrar</button>
              </td>
            </tbody>
            <tbody>
            	<td><b></b></td>
              <td>
                    <button type="submit" class="btn btn-outline-primary form-control" name = "btnQuitarFiltrosPrestamos">Quitar filtros</button>
              </td>
            </tbody>
            </form>
          </table>
        </div>
      </div>
      <%
		ArrayList <Prestamos> listaPrestamos = null;
		if (request.getAttribute("listaPrestamos")!=null)
			listaPrestamos = (ArrayList <Prestamos>)request.getAttribute("listaPrestamos");
		%> 
      <div class="container-fluid" style="width: 90%">
        <div class="card text-center">
          <div class="card-header"><h5>Prestamos</h5></div>
          <table class="table table-hover" id = table_id_prestamos style="font-size: 12px">
            <thead>
              <tr>
                <th>ID</th>
                <th>Propietario de cuenta</th>
                <th>Fecha</th>
                <th>Importe a pagar por cliente</th>
                <th>Importe pedido</th>
                <th>Plazo de pago en meses</th>
                <th>Monto a pagar x cuota</th>
                <th>Cantidad de cuotas</th>
              </tr>
            </thead>
            <%
                if (listaPrestamos!=null)
                	for(Prestamos prestamo : listaPrestamos){
                		if (prestamo.isEstado_Pr()){
                %>
            <tbody>
              <tr>
                <td><%= prestamo.getId_Pr() %></td>
                <td><%= prestamo.getCuentaDestino_Pr().getUsuario_Cuentas().getNombre_Usr() + " " + prestamo.getCuentaDestino_Pr().getUsuario_Cuentas().getApellido_Usr() %></td>
                <td><%= prestamo.getFechaSolicitado_Pr().toString() %></td>
                <td><%= prestamo.getImpResultante_Pr() %></td>
                <td><%= prestamo.getImpSolicitado_Pr() %></td>
                <td><%= prestamo.getPlazoMeses_Pr() %></td>
                <td><%= prestamo.getImpPagoAlMes_Pr() %></td>
                <td><%= prestamo.getCantCuotas_Pr() %></td>
              </tr>
            </tbody>
            <%}}%>
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
    </div>
  </body>
</html>
