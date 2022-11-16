<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Prestamos</title>
    
  </head>
  
  <body>
  <%@ include file="MasterPageAdmin.html" %>
  <br>
    <div class="container-fluid" style="width: 50%">
      <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;">
        <div class="card-header">
          <H2 style="text-align: center">Solicitar préstamo</H2>
        </div>
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
					<label for="floatingSelect">Número de cuotas</label>
				</div>
			</div>
			<br>
			<!--   ddlCuentaOrigenPrestamo> -->
                </select>
                <label for="floatingSelect">Usuario asignado</label>
              </div>
            </div>
			
			<div class="col-md-12">
                <br>
            	<input type="submit"
            	name="btnPedirPrestamo"
            	class="btn btn-outline-dark form-control btn-lg"
            	value="Solicitar préstamo"
            	onclick="return confirm('¿Está seguro de que quiere solicitar este préstamo?')">
            </div>

		</div>
      </div>
    </div>
    
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
    
    <br>

    <div class="container-fluid" style="width: 50%">
      <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;">
        <div class="card-header">
          <H2 style="text-align: center">Pagar préstamo</H2>
        </div>
        <div class="card-body" style="font-size: 13px">
          <div class="col-md-12">
         		<div class="form-floating">
         			<select  name="ddlPrestamo" class="form-select" id="floatingInput" placeholder="-"> 
         				<option>Prestamo 1</option>
			            <option>Prestamo 2</option>
			            <option>Prestamo 3</option>
         			</select> 
         			<label for="floatingSelect">Seleccionar prestamo</label>
         		</div>
        	</div>
          
          
			<div class="col-md-12">
                <br>
            	<input type="submit"
            	name="btnSeleccionar" 
            	class="btn btn-outline-dark form-control btn-lg"
            	value="Seleccionar prestamo">
            </div>
        </div>
      </div>
    </div>

    <br>

    <div class="container-fluid" style="width: 30%">
      <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;">
        <div class="card-header">
          <H2 style="text-align: center">Cuotas</H2>
        </div>
        <div class="card-body" style="font-size: 13px">
       	<h6>Cuotas siguiente por pagar: 3</h6>
        <br />
          
        <h6>Importe de la cuota: $1200.56</h6>
        <br />
        <div class="col-md-12">
            <div class="form-floating">
                <select name="ddlCuentaOrigenDebito" id="" class="form-select" id="floatingInput" placeholder="-">
                    <option value="">(cuenta)</option>
                    <option value="">Tigre</option>
                </select>
                <label for="floatingSelect">Cuenta origen para debitar</label>
            </div>
        </div>
        
   	  <br>
          
          <div class="col-md-12">
                <br>
            	<input type="submit"
            	 name= "btnPagarCuota"
            	 class="btn btn-outline-dark form-control btn-lg"
            	 value="Pagar"
            	 onclick="return confirm('¿Está seguro de que quiere pagar esta cuota?')">
           </div>
        </div>
      </div>
    </div>
    
    <div style="display: flex; justify-content: center;">
        
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> No se pudo pagar correctamente.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        
        <div ID="MsgCorrectoDiv" class="col-md-4 alert alert-success" runat="server" visible="false">
            <strong>Correcto</strong> Pagado correctamente.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        
    </div>
    
    <br>
    <%@ include file="FooterPage.html" %>
  </body>
  
  
</html>
