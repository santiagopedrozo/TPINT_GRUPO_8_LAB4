<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Transferencias</title>
  </head>
  <body>
    <%@ include file="MasterPage.html" %>

    <div class="container-fluid" style="width: 50%">
      <div class="card text-center">
        <div class="card-header">
          <H2 style="text-align: center">Transferencias</H2>
        </div>
        <div class="card-body" style="font-size: 13px">
          <form action="Transferencias.jsp" method="get">
          	<br>
            <div class="col-md-12">
              <div class="form-floating" name="ddlCuentaOrigen">
                <select
                  name=""
                  id=""
                  class="form-select"
                  id="floatingInput"
                  placeholder="-"
                >
                  <option value="">(DNI) (CBU)</option>
                  <option value="">(DNI) (CBU)</option>
                </select>
                <label for="floatingSelect">Cuenta origen</label>
              </div>
            </div>
			<br>
            <div class="col-md-12">
              <div class="form-floating" name="ddlCuentaOrigen">
                <select
                  name=""
                  id=""
                  class="form-select"
                  id="floatingInput"
                  placeholder="-"
                >
                  <option value="">(DNI) (CBU)</option>
                  <option value="">(DNI) (CBU)</option>
                </select>
                <label for="floatingSelect">Cuenta destino</label>
              </div>
            </div>
			<br>
            <div class="col-md-12">
              <div class="form-floating mb-3">
                <input
                  type="number"
                  class="form-control"
                  id="floatingInput"
                  name="txtImporte"
                  placeholder="-"
                />
                <label for="floatingSelect">Importe</label>
              </div>
            </div>
			<br>
            <div class="col-md-12">
              <input
                type="submit"
                class="btn btn-outline-primary form-control btn-lg"
                name="btnTransferir"
                value="Transferir"
                class="btn btn-outline-primary btn-sm"
              />
            </div>
          </form>
        </div>
      </div>
    </div>
    
    <div style="display: flex; justify-content: center;">
        
        <div ID="MsgErrorDiv" class="col-md-4 alert alert-danger" runat="server" visible="false">
            <strong>Error</strong> La cuenta origen debe ser distinta de destino.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        
        <div ID="MsgCorrectoDiv" class="col-md-4 alert alert-success" runat="server" visible="false">
            <strong>Correcto</strong> Transferencia enviada correctamente
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        
    </div>
    <%@ include file="FooterPage.html" %>
  </body>
</html>
