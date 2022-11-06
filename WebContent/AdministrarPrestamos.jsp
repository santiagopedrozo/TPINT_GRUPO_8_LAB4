<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <td>1</td>  
                        <td>22233212</td>
                        <td>5</td>
                        <td>31/10/2022</td>  
                        <td>12</td> 
                        <td>200.000</td>
                        <td>20.000</td>
                    </tr>
                </tbody>
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
                        <td>1</td>  
                        <td>22233212</td>
                        <td>5</td>
                        <td>31/10/2022</td>  
                        <td>12</td> 
                        <td>200.000</td>
                        <td>20.000</td>
                    </tr>
                </tbody>
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
                        <td>1</td>  
                        <td>22233212</td>
                        <td>5</td>
                        <td>31/10/2022</td>  
                        <td>12</td> 
                        <td>200.000</td>
                        <td>20.000</td>
                    </tr>
                </tbody>
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
                        <td>1</td>  
                        <td>22233212</td>
                        <td>5</td>
                        <td>31/10/2022</td>  
                        <td>12</td> 
                        <td>200.000</td>
                        <td>20.000</td>
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
      <br>
      
    <%@ include file="FooterPage.html" %>
	
</body>
</html>