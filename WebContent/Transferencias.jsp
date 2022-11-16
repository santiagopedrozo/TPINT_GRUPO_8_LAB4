<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entidades.Cuentas" %>
<%@ page import="entidades.Usuarios" %>  
<%@ page import="entidades.Movimientos" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Transferencias</title>
    
<%
	ArrayList <Cuentas> listaCuentasOrigen = null;
	if (request.getAttribute("listaCuentasOrigen")!=null) listaCuentasOrigen=(ArrayList <Cuentas>)request.getAttribute("listaCuentasOrigen");
	
	ArrayList <Cuentas> listaCuentasDestino = null;
	if (request.getAttribute("listaCuentasDestino")!=null) listaCuentasDestino=(ArrayList <Cuentas>)request.getAttribute("listaCuentasDestino");
%>  
  </head>
  <body>
    <%@ include file="MasterPageAdmin.html" %>
	<br>
	
	<form action ="servletTransferencias" method="post">
    <div class="container-fluid" style="width: 50%">
      <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 100px;">
        <div class="card-header">
          <H2 style="text-align: center">Transferencias</H2>
        </div>
        <div class="card-body" style="font-size: 13px">
          <form action="Transferencias.jsp" method="get">
          	<br>
            <div class="col-md-12">
              <div class="form-floating" name="">
                <select
                  name="ddlCuentaOrigen"
                  id=""
                  class="form-select"
                  id="floatingInput"
                  placeholder="-"
                >
                <%
                if (listaCuentasOrigen!=null)
                	for (Cuentas cuenta : listaCuentasOrigen){ 	
                %>
                  <option value=<%=cuenta.getNro_Cuentas() %>>  <%=cuenta.getNro_Cuentas() + " - " +cuenta.getCBU_Cuentas() + " - " + cuenta.getUsuario_Cuentas().getNombre_Usr() + " " + cuenta.getUsuario_Cuentas().getApellido_Usr() %></option>
                <%} %>
                </select>
                <label for="floatingSelect">Cuenta origen</label>
              </div>
            </div>
			<br>
            <div class="col-md-12">
              <div class="form-floating" name="">
                <select
                  name="ddlCuentaDestino"
                  id=""
                  class="form-select"
                  id="floatingInput"
                  placeholder="-" >
                   <%
                if (listaCuentasDestino!=null)
                	for (Cuentas cuenta : listaCuentasDestino){
                %>
                  <option value= <%=cuenta.getNro_Cuentas()%>>  <%=cuenta.getNro_Cuentas() + " - " +cuenta.getCBU_Cuentas() + " - "+ cuenta.getUsuario_Cuentas().getNombre_Usr() + " " + cuenta.getUsuario_Cuentas().getApellido_Usr() %></option>
                <%} %>
                </select>
                <label for="floatingSelect">Cuenta destino</label>
              </div>
            </div>
			<br>
            <div class="col-md-12">
              <div class="form-floating mb-3">
                <input
                   type="text"
                  class="form-control"
                  id="floatingInput"
                  name="txtDetalle"
                  placeholder="-"
                  required
                />
                <label for="floatingSelect">Detalle</label>
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-floating mb-3">
                <input
                 
                  type="number"
                  step=0.01
                  class="form-control"
                  id="floatingInput"
                  name="txtImporte"
                  placeholder="-"
                  required
                />
                <label for="floatingSelect">Importe</label>
              </div>
            </div>
			<br>
            <div class="col-md-12">
              <input
                type="submit"
                class="btn btn-outline-dark form-control btn-lg"
                name="btnTransferir"
                value="Transferir"
                class="btn btn-outline-dark btn-sm"
                onclick="return confirm('¿Está seguro de que hacer esta transferencia?')"
              />
            </div>
          </form>
        </div>
      </div>
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
            <strong>Error</strong> La cuenta de origen no puede ser la misma que la de destino.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        else if (mensaje == -1){
        %>
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> La cuenta no tiene saldo disponible para la transferencia.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        else if (mensaje == 0){
        %>
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> Hubo un error al realizar la transferencia.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        else if (mensaje == 1){
        %>
        
        <div ID="MsgCorrectoDiv" class="col-md-4 alert alert-success" runat="server" visible="false">
            <strong>Correcto</strong> Transferencia realizada correctamente!
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        <%
        }
        %>
   </div>
    <%@ include file="FooterPage.html" %>
    </form>
  </body>
</html>
