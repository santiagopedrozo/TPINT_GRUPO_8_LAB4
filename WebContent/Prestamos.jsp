<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="entidades.Cuentas" %>
<%@ page import="entidades.Usuarios" %>
<%@ page import="entidades.Prestamos" %>
<%@ include file="MasterPageAdmin.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<script type="text/javascript">
		$(document).ready(function () {
	        $('#table_prestamos').DataTable({
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
    
    
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Prestamos</title>
    
    
    
  </head>
  	<%
	  	Prestamos prestamoAPagar = null;
	  	if(request.getAttribute("prestamoAPagar")!=null)
	  		prestamoAPagar = (Prestamos)request.getAttribute("prestamoAPagar");
	  	
	  	String dniUser = ((Usuarios)session.getAttribute("sessionUser")).getDNI_Usr();
	  	ArrayList <Cuentas> listaCuentasOrigen = null;
			if (request.getAttribute("listaCuentasOrigen")!=null) listaCuentasOrigen=(ArrayList <Cuentas>)request.getAttribute("listaCuentasOrigen");
		ArrayList <Prestamos> prestamosDeUsr = null;
			if (request.getAttribute("prestamosDeUsr")!=null) prestamosDeUsr=(ArrayList <Prestamos>)request.getAttribute("prestamosDeUsr");
	%> 
  <body >
	 	 
  <br>
    

    <div class="container-fluid" style="width: 90%">
      <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;">
        <div class="card-header">
          <H2 style="text-align: center">Pagar prestamo</H2>
        </div>
        
        <table class="table table-hover" id="table_prestamos">
            <thead>
              <tr>
                <th> </th>  
                <th>Cuenta destino</th>  
                <th>Fecha solicitado</th> 
                <th>Imp. solicitado</th>  
                <th>Imp. a pagar</th>
                <th>Imp. a pagar por mes</th> 
                <th>Plazo meses</th>
                <th>Estado aprobacion</th>
              </tr>
            </thead>
            <tbody>
	            <%if (prestamosDeUsr!=null)
		            	for (Prestamos pr : prestamosDeUsr){%>
		            		
	              <tr>
	  				<form method="post" action="ServletPrestamosUsuario" name="prestamoSeleccionado">
		  				<%if(pr.isAutorizado_Pr()){ %>
			                <th scope="row">
			                  <button type="submit" name="btnPagar" class="btn btn-outline-success">
			                  
			                  
			                    <i class="fa-solid fa-comments-dollar"></i> pagar
			                  </button>
			                </th>
		                <%} else {%>
		                	<th scope="row">
			                  <button type="submit" disabled="true" class="btn btn-outline-success">
			                    <i class="fa-solid fa-comments-dollar"></i> pagar
			                  </button>
			                </th>
		                <%}%>
	                	<input type="hidden" name="prestamoSeleccionado" value="<%= pr.getId_Pr() %>">
		                <td><%= pr.getCuentaDestino_Pr().getNro_Cuentas() %> </td> 
		                <td><%=pr.getFechaSolicitado_Pr() %> </td>
		                <td><%=pr.getImpSolicitado_Pr() %></td>  
		                <td><%=pr.getImpResultante_Pr() %></td>
		                <td><%=pr.getImpPagoAlMes_Pr() %></td>   
		                <td><%=pr.getPlazoMeses_Pr() %></td>
		                <td><%=pr.isAutorizado_Pr() %></td>
					</form>
	              </tr> 
	        	<%}%>
            </tbody>     
          </table>
	    </div>
	  </div>
	
		<br>
	<div style="display:flex; flex-direction: row;">
		<div class="container-fluid" style="width: 40%">
	      <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;">
	        <div class="card-header">
	          <H2 style="text-align: center">Solicitar prestamo</H2>
	        </div>
	        <form method="post" action="ServletPrestamosUsuario">
		        <div class="card-body" style="font-size: 16px">
		        	<div class="col-md-12">
		                <div class="form-floating mb-3">
		                    <input 
		                    type="number"
		                    class="form-control"
		                    name="txtImporte"
		                    placeholder="-"
		
		                    step=0.01
		                    required>
		                    <label for="floatingInput">$ Importe a pedir</label>
		                </div>
		            </div>
		          	<div class="col-md-12">
		           		<div class="form-floating">
							<select name="ddlCuotas"
							 class="form-select" id="floatingInput" placeholder="-">
								<%for (int i=1; i<=24; i++){ %>
								<option value=<%=i%>><%=i%></option>
								<%} %>
							</select>
							<label for="floatingSelect">Numero de cuotas</label>
						</div>
					</div>
					<br>
					<!--   ddlCuentaOrigenPrestamo> -->
		             <div class="col-md-12">
		              <div class="form-floating" name="">
		                <select
		                  name="ddlCuentaOrigen"
		                  id=""
		                  class="form-select"
		                  id="floatingInput"
		                  placeholder="-"
		                >
		                <%if (listaCuentasOrigen!=null)
		                	for (Cuentas cuenta : listaCuentasOrigen){%>
		                  <option value=<%=cuenta.getNro_Cuentas() %>>  <%=cuenta.getNro_Cuentas() + " - " +cuenta.getCBU_Cuentas() + " - " + cuenta.getUsuario_Cuentas().getNombre_Usr() + " " + cuenta.getUsuario_Cuentas().getApellido_Usr() %></option>
		                <%}%>
		                </select>
		                <label for="floatingSelect">Cuenta origen</label>
		              </div>
		            </div>
		            
		            <div class="col-md-12">
		                <br>
		            	<input type="submit"
		            	name="btnPedirPrestamo"
		            	class="btn btn-outline-dark form-control btn-lg"
		            	value="Solicitar prestamo"
		            	onclick="return confirm('¿Esta seguro de que quiere solicitar este préstamo?')">
		            </div>
		               
		         </div>
		         </form>
	      		</div>
			</div>
	    
	    <br>
		<%if (prestamoAPagar != null){ %>
		    <div class="container-fluid" style="width: 40%;" >
		      <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;">
		        <div class="card-header">
		          <H2 style="text-align: center">Cuotas</H2>
		        </div>
		        <div class="card-body" style="font-size: 13px">
		       	<h5>Cuotas siguiente por pagar: <%= prestamoAPagar.getCantCuotas_Pr() + 1 %></h5>
		        <br/>  
		        <h5>Importe de la cuota: <%= prestamoAPagar.getImpPagoAlMes_Pr() %></h5>
		        <br/>
		        <form method="post" action="ServletPrestamosUsuario" >
			        <div class="col-md-12">
			            <div class="form-floating">
			                <select
			                  name="ddlCuentaOrigenParaPagar"
			                  id=""
			                  class="form-select"
			                  id="floatingInput"
			                  placeholder="-"
			                >
			                <%if (listaCuentasOrigen!=null)
			                	for (Cuentas c : listaCuentasOrigen){%>
			                  		<option value=<%=c.getNro_Cuentas() %>>  <%="CBU " +c.getCBU_Cuentas() + " - Saldo " + c.getSaldo_Cuentas() %></option>
			                		
			                <%}%>
			                </select>
			                <label for="floatingSelect">Cuenta origen para debitar</label>
			            </div>
			        </div>
		        </form>        
		   	  <br>
		          <div class="col-md-12">
		                <br>
		            	<input type="submit"
		            	 name= "btnPagarCuota"
		            	 class="btn btn-outline-dark form-control btn-lg"
		            	 value="Pagar"
		            	 onclick="return confirm('¿Esta seguro de que quiere pagar esta cuota?')">
		           </div>
		        </div>
		      </div>
		    </div>
		<%}%>
    </div>
    
    <div style="display: flex; justify-content: center;">
   		<%
			boolean resultadoInsert = false;
		    if (request.getAttribute("resultadoPrestamo")!=null) resultadoInsert = (boolean)request.getAttribute("resultadoPrestamo");
	    	if (resultadoInsert == false && request.getAttribute("resultadoPrestamo") != null){
    	%>
	       <div ID="MsgErrorDiv" style="font-size: 16px box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;" class="col-md-6 alert alert-danger" runat="server" visible="false">
	           <strong>Error</strong> No se pudo solicitar prestamo correctamente.
	           <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	       </div>
       <%}else if (resultadoInsert){
       %>
	       <div ID="MsgCorrectoDiv"  style="font-size: 16px box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;" class="col-md-6 alert alert-success" runat="server" visible="false">
	           <strong>Agregado</strong> Prestamo solicitado correctamente.
	           <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	       </div>
       <%}%>
    </div>
    
    <div style="display: flex; justify-content: center;">
   		<%
			boolean resultadoPagado = false;
		    if (request.getAttribute("resultadoPagado")!=null) resultadoInsert = (boolean)request.getAttribute("resultadoPagado");
	    	if (resultadoPagado == false && request.getAttribute("resultadoPagado") != null){
    	%>
	       <div ID="MsgErrorDiv" style="font-size: 16px box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;" class="col-md-6 alert alert-danger" runat="server" visible="false">
	           <strong>Error</strong> No se pudo pagar la cuota correctamente.
	           <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	       </div>
       <%}else if (resultadoPagado){
       %>
	       <div ID="MsgCorrectoDiv"  style="font-size: 16px box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;" class="col-md-6 alert alert-success" runat="server" visible="false">
	           <strong>Agregado</strong> Cuota pagada correctamente.
	           <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	       </div>
       <%}%>
    </div>
    
    <br>
    <%@ include file="FooterPage.html" %>
  </body>
  
  
</html>
