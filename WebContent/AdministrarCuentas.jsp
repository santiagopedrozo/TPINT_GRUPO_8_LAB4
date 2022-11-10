<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entidades.Cuentas" %>
<%@ page import="entidades.Usuarios" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="MasterPageAdmin.html" %>

<title>Administración cuentas</title>

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>

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
                scrollY: 400,
                lengthMenu: [ [10, 25, -1], [10, 25, "All"] ],
            });
        });
    </script>

</head>
<body>
	
   <br>
   
  <div class="container-fluid" style="width:70%;">
    <div class="card text-center">
        <div class="card-header ">
          <h5>Cuentas</h5>
        </div>
      
		<%
		ArrayList <Cuentas> listaCuentas = null;
		if (request.getAttribute("listaCuentas")!=null) listaCuentas=(ArrayList <Cuentas>)request.getAttribute("listaCuentas");
		int posicion=0;
		%>  
        <table class="table table-hover" id="table_id_cuentas">
            <thead>
              <tr>
                <th> </th>  
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
                %>
              <tr>
  				<form action= "servletCuentas" method="post" name="formCuentas">
                <th scope="row">
                  <button type="submit" class="btn btn-outline-success">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </button>
                  
                  <button type="submit" name="btnEliminar" class="btn btn-outline-danger">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                  
                </th>
                <td><%=cuenta.getNro_Cuentas() %> <input type="hidden" name="hiddenEliminar" value="<%=cuenta.getNro_Cuentas()%>"> </td> 
                <td><%=cuenta.getCBU_Cuentas() %></td>
                <td><%=cuenta.getTipoCuenta_Cuentas().getDescripcion_TipoCuenta() %></td>  
                <td><%=cuenta.getUsuario_Cuentas().getDNI_Usr() %></td>
                <td><%=cuenta.getFechaCreacion_Cuentas() %></td>   
                <td>$<%=cuenta.getSaldo_Cuentas() %></td>
				</form>
              </tr>
             
             	<%
                	}
             	%>
            </tbody>     
          </table>
        <div class="card-footer">
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
               
            </ul>
        </nav>
      </div>
    </div>
  </div>
  <br>
  <div class="container-fluid" style="width:50%;">
    <div class="card text-center">
        <div class="card-header"><h5>Crear y asignar cuenta</h5></div>
        <div class="card-body">
          <form method="post" action="servletCuentas" class="row">
            
        
            <div class="col-md-12">
              <div class="form-floating">
                <select name="ddlTipoCuenta"class="form-select" id="floatingSelect" aria-label="-">
                  <option value="1">Caja de ahorro</option>
                  <option value="2">Cuenta corriente</option>
                </select>
                <label for="floatingSelect">Tipo de cuentas</label>
              </div>
            </div>
            
            <br>
        
            <div class="col-md-12">
              <div class="col-md-12">
                <div class="form-floating mb-3">
                  <input type="text" 
                  name="txtCBU"
                  class="form-control" 
                  oninput="this.value =this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" 
                  minlength="20"
                  maxlength="20"
                  placeholder="-"
                  required
                  >
                  <label for="floatingInput">CBU</label>
                </div>
              </div> 
            </div>

     		 <br>
<%
ArrayList <Usuarios> listaUser= null;
if (request.getAttribute("listaUser")!=null) listaUser=(ArrayList <Usuarios>)request.getAttribute("listaUser");
%>          
            <div class="col-md-12">
              <div class="form-floating">
                <select name="ddlUsuarios" class="form-select" id="floatingSelect" aria-label="-">
               	<%
                if (listaUser!=null)
                	for(Usuarios user: listaUser){
                		if (user.isTipo_Usr()==false){
                %>
                  <option value= <%=user.getDNI_Usr()%>> <%=user.getDNI_Usr() + " - " + user.getNombre_Usr() +" "+user.getApellido_Usr() %></option>
                  
                <%
                		}
                	}
                %>
                </select>
                <label for="floatingSelect">Usuario asignado</label>
              </div>
            </div>
            
            <div class="col-md-12">
                <button type="submit" name="btnCuentas"class="btn btn-outline-primary form-control btn-lg">Dar de alta cuenta</button>
            </div>
      
          </form>
        </div>
    </div>
    <br>
  </div>
  
<%
int mensaje=-3;
if (request.getAttribute("mensaje")!=null) mensaje=(int)request.getAttribute("mensaje");
%>   
  <div style="display: flex; justify-content: center;">
        <%
        if (mensaje == -2){
        %>
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> Hubo un error al agregar la cuenta.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        else if (mensaje == -1){
        %>
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> El usuario excedió el límite de cuentas.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        else if (mensaje == 0){
        %>
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> El CBU elegido ya tiene una cuenta asignada.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        else if (mensaje == 1){
        %>
        
        <div ID="MsgCorrectoDiv" class="col-md-4 alert alert-success" runat="server" visible="false">
            <strong>Correcto</strong> Cuenta agregada correctamente.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        %>
        
    </div>
   
    <%@ include file="FooterPage.html" %>

</body>
</html>