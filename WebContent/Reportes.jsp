<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="MasterPage.html" %>
	<div style="display: flex; justify-content: center;">
		<div class="container-fluid" style="width:40%;">
	    	<div class="card text-center">
		         <table class="table table-hover" style="text-align: start; margin: 1px; font-size: 19px;">
			         <tbody>
			             <td><b>Propietario de cuenta:</b></td>  
			             <td><input type = "text" class="form-control" id="floatingInput"  name = txtNombre></td>      
			         </tbody>
			         <tbody>
			             <td><b>Fecha:</b></td>  
			             <td><input type = "date" class="form-control" id="floatingInput"  name = "fecha1"><input type = "date" class="form-control" id="floatingInput"  name = "fecha2"></td>
			         </tbody>
			         <tbody>
			            <td><b>Tipo:</b></td>  
			            <td>
				            <select name = "ddlTipos" class="form-control" id="floatingInput"  id = "ddlTipos">
								<option value = "Alta de cuenta">Alta de cuenta</option>
								<option value = "Alta de un prestamo">Alta de un préstamo</option>
								<option value = "Pago de prestamo">Pago de préstamo</option>
								<option value = "Transferencia">Transferencia</option>
							</select>
						</td>
			        </tbody>
			   	</table>
		    </div>
		 </div>
		<div class="container-fluid" style="width:90%;">
	        <div class="card text-center">
	            <div class="card-header "><h5>Movimientos</h5></div>
	            <table class="table table-hover" style="font-size: 12px;">
	            	<thead>
						<tr>
							<th> ID </th> <th> Fecha </th> <th> Detalle </th> <th> Importe </th> <th> Tipo </th> <th> Cuenta </th>
						</tr>
					</thead>
					<tbody>
	                    <tr> 
	                        <td>1</td> <td>1/11/2022</td> <td>Pago de spotify</td> <td>850</td> <td>Transaccion</td> <td>Bruno Lisanti</td>
	                    </tr>
	                </tbody>
	            </table>
	        </div>
	    </div>
    </div>
    
	<!-- Parte de clientes -->
	
	<div style="display: flex; justify-content: center;">
	<div class="container-fluid" style="width:40%;">
    	<div class="card text-center">
	         <table class="table table-hover" style="text-align: start; margin: 1px; font-size: 19px;">
		         <tbody>
		             <td><b>Nombre:</b></td>  
		             <td><input type = "text" class="form-control" id="floatingInput"  name = txtNombre></td>      
		         </tbody>
		         <tbody>
		             <td><b>Apellido:</b></td>  
		             <td><input type = "text" class="form-control" id="floatingInput"  name = txtApellido></td>
		         </tbody>
		         <tbody>
		            <td><b>Nacionalidad:</b></td>  
		            <td>
			            <select name = "ddlNacionalidad" class="form-control" id="floatingInput"  id = "ddlNacionalidad">
							<option value = "Argentina">Argentina</option>
							<option value = "Brasil">Brasil</option>
							<option value = "Uruguay">Uruguay</option>
							<option value = "Paraguay">Paraguay</option>
						</select>
					</td>
		        </tbody>
		        <tbody>
		            <td><b>Provincia:</b></td>  
		            <td>
			            <select name = "ddlProvincias" class="form-control" id="floatingInput"  id = "ddlProvincias">
							<option value = "Buenos Aires">Buenos Aires</option>
							<option value = "Catamarca">Catamarca</option>
							<option value = "La rioja">La rioja</option>
							<option value = "Cordoba">Cordoba</option>
						</select>
					</td>
		        </tbody>
		        <tbody>
		            <td><b>Localidad:</b></td>  
		            <td>
			            <select name = "ddlProvincias" class="form-control" id="floatingInput"  id = "ddlProvincias">
							<option value = "Don Torcuato">Don Torcuato</option>
							<option value = "Pacheco">Pacheco</option>
							<option value = "Ricardo Rojas">Ricardo Rojas</option>
							<option value = "Malvinas">Malvinas</option>
						</select>
					</td>
		        </tbody>
		   	</table>
	    </div>
	 </div>
	<div class="container-fluid" style="width:90%;">
        <div class="card text-center">
            <div class="card-header "><h5>Clientes</h5></div>
            <table class="table table-hover" style="font-size: 12px;">
            	<thead>
					<tr>
						<th> DNI </th> <th> CUIL </th> <th> Nombre </th> <th> Apellido </th> <th> Sexo </th> <th> Nacionalidad </th> <th> Nacimiento </th> <th> Direccion </th> <th> Localidad </th> <th> Provincia </th> <th> Telefono </th> <th> Contraseña </th>
					</tr>
				</thead>
				<tbody>
                    <tr> 
                        <td>44725134</td> <td>20447251346</td> <td>Bruno</td> <td>Lisanti</td> <td>Sin especificar</td> <td>Argentina</td> <td>11/03/2003</td> <td>Bolivia 1440</td> <td>Don Torcuato</td> <td>Buenos Aires</td> <td>1169494066</td> <td>xxxxxxxx</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </div>
    
    <!-- PArte de CUENTAS -->
    
	<div style="display: flex; justify-content: center;">
	<div class="container-fluid" style="width:40%;">
    	<div class="card text-center">
    	
	         <table class="table table-hover" style="text-align: start; margin: 1px; font-size: 19px;">
		         <tbody>
		             <td><b>Propietario de cuenta:</b></td>  
		             <td><input type = "text" class="form-control" id="floatingInput"  name = txtNombre></td>      
		         </tbody>
		         <tbody>
		             <td><b>Fecha:</b></td>  
		             <td><input type = "date" class="form-control" id="floatingInput"  name = "fecha1"><input type = "date" class="form-control" id="floatingInput"  name = "fecha2"></td>
		         </tbody>
		         <tbody>
		            <td><b>Tipo:</b></td>  
		            <td>
			            <select name = "ddlTipos" class="form-control" id="floatingInput"  id = "ddlTipos">
							<option value = "Cuenta corriente">Cuenta corriente</option>
							<option value = "Caja de ahorro">Caja de ahorro</option>
						</select>
					</td>
		        </tbody>
		   	</table>
	    </div>
	 </div>
	<div class="container-fluid" style="width:90%;">
        <div class="card text-center">
            <div class="card-header "><h5>Cuentas</h5></div>
            <table class="table table-hover" style="font-size: 12px;">
            	<thead>
					<tr>
						<th> ID </th> <th> Fecha </th> <th> Tipo </th> <th> Numero </th> <th> CBU </th> <th> Saldo </th> <th> Propietario </th>
					</tr>
				</thead>
				<tbody>
                    <tr> 
                        <td>1</td> <td>1/11/1990</td> <td>Cuenta de ahorro</td> <td>1546235147</td> <td>7982642134</td> <td>500000.00</td> <td>Bruno Lisanti</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
	</div>
	
	<!-- PARTE DE PRESTAMOS-->
	
	<div style="display: flex; justify-content: center;">
	<div class="container-fluid" style="width:40%;">
    	<div class="card text-center">
	         <table class="table table-hover" style="text-align: start; margin: 1px; font-size: 19px;">
		         <tbody>
		             <td><b>Propietario de cuenta:</b></td>  
		             <td><input type = "text" class="form-control" id="floatingInput" name = txtNombre></td>      
		         </tbody>
		         <tbody>
		             <td><b>Fecha:</b></td>  
		             <td><input type = "date" class="form-control" id="floatingInput" name = "fecha1"><input type = "date" class="form-control" id="floatingInput" name = "fecha2"></td>
		         </tbody>
		         <tbody>
		            <td><b>Importe a pagar por cliente:</b></td>  
		            <td><input type = "text" class="form-control" id="floatingInput"  name = "txtImportePagar1"><input type = "text" class="form-control" id="floatingInput"  name = "txtImportePagar2"></td>
		        </tbody>
		        <tbody>
		             <td><b>Importe pedido por cliente:</b></td>  
		             <td><input type = "text" class="form-control" id="floatingInput"  name = "txtImportePedido1"><input type = "text" class="form-control" id="floatingInput"  name = "txtImportePedido2"></td>
		         </tbody>
		         <tbody>
		             <td><b>Cantidad de cuotas:</b></td>  
		             <td><input type = "text" class="form-control" id="floatingInput"  name = "txtCuotas"></td>
		         </tbody>
		   	</table>
	    </div>
	 </div>
	<div class="container-fluid" style="width:90%;">
        <div class="card text-center">
            <div class="card-header "><h5>Prestamos</h5></div>
            <table class="table table-hover" style="font-size: 12px;">
            	<thead>
					<tr>
						<th> ID </th> <th> Propietario de cuenta </th> <th> Fecha </th> <th> Importe a pagar por cliente </th> <th> Importe pedido </th> <th> Plazo de pago en meses </th> <th> Monto a pagar x cuota </th> <th> Cantidad de cuotas </th>
					</tr>
				</thead>
				<tbody>
                    <tr> 
                        <td>1</td> <td>Bruno Lisanti</td> <td>1/11/2022</td> <td>500000.00</td> <td>400000.00</td> <td>12</td> <td>80000.00</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </div>

</body>
</html>