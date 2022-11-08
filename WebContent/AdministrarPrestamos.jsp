<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="entidades.Prestamos" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="MasterPageAdmin.html" %>
<br>
<br>
<form method = "post" action = "ServletPrestamos">
	<div class="container-fluid" style="width:90%;">
        <div class="card text-center">
            <div class="card-header "><h5>Prestamos</h5></div>
            <table class="table table-hover" style="font-size: 12px;">
                <thead>
                    <tr>
                      <th> </th> 
                      <th>ID Prestamo</th>   
                      <th>DNI Solicitante</th> 
                      <th>Nro cuenta destino</th>
                      <th>Fecha</th> 
                      <th>Cantidad de cuotas</th>
                      <th>Monto pedido</th> 
                      <th>Monto a pagar por cuota</th> 
                    </tr>
                </thead>
			<%
			ArrayList<Prestamos> listaPrestamos = null;
			
			if (request.getAttribute("listaPrestamos") != null)
				listaPrestamos = (ArrayList<Prestamos>) request.getAttribute("listaPrestamos");
			%>
			
			<%
			if (request.getAttribute("listaPrestamos") != null)
			for (Prestamos prestamo : listaPrestamos)
			{ 
				System.out.println(prestamo);
			%>
                <tbody>
                    <tr>
                        <th scope="row">
                            <button type="button" class="btn btn-outline-success btn-sm">
                                <i class="fa-solid fa-check"></i>
                            </button>
                            <button type="button" class="btn btn-outline-danger btn-sm">
                                <i class="fa-solid fa-xmark"></i>
                            </button>
                        </th>  
                        <td><%= prestamo.getId_Pr() %></td>  
                        <td><%= prestamo.getCuentaDestino_Pr().getUsuario_Cuentas().getDNI_Usr() %></td>
                        <td><%= prestamo.getCuentaDestino_Pr().getNro_Cuentas() %></td>
                        <td><%= prestamo.getFechaSolicitado_Pr().toString() %></td>  
                        <td><%= prestamo.getCantCuotas_Pr() %></td> 
                        <td><%= prestamo.getImpSolicitado_Pr() %></td>
                        <td><%= prestamo.getImpPagoAlMes_Pr() %></td>
                    </tr>
                </tbody>
            <%}%>
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
</form>
      <br>
      <br>
      <br>
      
    <%@ include file="FooterPage.html" %>
	
</body>
</html>