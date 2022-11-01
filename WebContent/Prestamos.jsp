<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Prestamos</title>
    
  </head>
  
  <body>
  <%@ include file="MasterPage.html" %>
  <br>
    <div class="container-fluid" style="width: 50%">
      <div class="card text-center">
        <div class="card-header">
          <H2 style="text-align: center">Solicitar pr�stamo</H2>
        </div>
        <div class="card-body" style="font-size: 16px">
        	<div class="col-md-12">
                <div class="form-floating mb-3">
                    <input type="number" class="form-control" name="txtImporte" placeholder="-">
                    <label for="floatingInput">Importe a pedir</label>
                </div>
            </div>
          	<div class="col-md-12">
           		<div class="form-floating">
					<select name="ddlCuotas" class="form-select" id="floatingInput" placeholder="-">
						<%for (int i=1; i<=12; i++){ %>
						<option value=<%=i%>><%=i%></option>
						<%} %>
					</select>
					<label for="floatingSelect">N�mero de cuotas</label>
				</div>
			</div>
			
			<br>
			
			<div class="col-md-12">
           		<div class="form-floating">
           			<select  name="ddlCuentaOrigenPrestamo" class="form-select" id="floatingInput" placeholder="-"> 
           				<option>(dni)</option>
           			</select> 
           			<label for="floatingSelect">Cuenta destino</label>
           		</div>
          	</div>
			
			<div class="col-md-12">
                <br>
            	<input type="submit" name= "btnPedirPrestamo" class="btn btn-outline-primary form-control btn-lg" value="Solicitar pr�stamo">
            </div>

		</div>
      </div>
    </div>
    
    <div style="display: flex; justify-content: center;">
        
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> No se pudo solicitar prestamo correctamente.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        
        <div ID="MsgCorrectoDiv" class="col-md-4 alert alert-success" runat="server" visible="false">
            <strong>Correcto</strong> Prestamo solicitado correctamente.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        
    </div>
    
    <br>

    <div class="container-fluid" style="width: 50%">
      <div class="card text-center">
        <div class="card-header">
          <H2 style="text-align: center">Pagar pr�stamo</H2>
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
            	<input type="submit" name="btnSeleccionar" class="btn btn-outline-primary form-control btn-lg" value="Seleccionar prestamo">
            </div>
        </div>
      </div>
    </div>

    <br>

    <div class="container-fluid" style="width: 30%">
      <div class="card text-center">
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
            	<input type="submit" name= "btnPagarCuota" class="btn btn-outline-primary form-control btn-lg" value="Pagar">
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
