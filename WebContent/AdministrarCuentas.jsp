<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<br>
    <br>
    <h1 style="text-align: start;">Administración de cuentas</h1>
    <br>
    <br>

    <div class="listado">
        <table class="table">
            <thead>
              <tr>
                <th> </th>  
                <th>idcuenta</th>  
                <th>fecha creación</th>  
                <th>tipo cuenta</th>  
                <th>CBU</th> 
                <th>saldo</th>
                <th>estado</th>
                <th>dni</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">
                    <input type="button" class="btn btn-primary" value="eliminar">
                    <input type="button" class="btn btn-primary" value="modificar">
                </th>    
                <td>1</td>  
                <td>23/01/2022</td>  
                <td>0001</td>  
                <td>29991111222233330000</td> 
                <td>69.000$</td>
                <td>true</td>
                <td>2589021</td>
              </tr>
            </tbody>
    
            <tbody>
                <tr>
                  <th scope="row">
                      <input type="button" class="btn btn-primary" value="eliminar">
                      <input type="button" class="btn btn-primary" value="modificar">
                  </th>    
                  <td>1</td>  
                  <td>23/01/2022</td>  
                  <td>0001</td>  
                  <td>29991111222233330000</td> 
                  <td>69.000$</td>
                  <td>true</td>
                  <td>2589021</td>
                </tr>
              </tbody>
    
              <tbody>
                <tr>
                  <th scope="row">
                      <input type="button" class="btn btn-primary" value="eliminar">
                      <input type="button" class="btn btn-primary" value="modificar">
                  </th>    
                  <td>1</td>  
                  <td>23/01/2022</td>  
                  <td>0001</td>  
                  <td>29991111222233330000</td> 
                  <td>69.000$</td>
                  <td>true</td>
                  <td>2589021</td>
                </tr>
              </tbody>
    
              <tbody>
                <tr>
                  <th scope="row">
                      <input type="button" class="btn btn-primary" value="eliminar">
                      <input type="button" class="btn btn-primary" value="modificar">
                  </th>    
                  <td>1</td>  
                  <td>23/01/2022</td>  
                  <td>0001</td>  
                  <td>29991111222233330000</td> 
                  <td>69.000$</td>
                  <td>true</td>
                  <td>2589021</td>
                </tr>
              </tbody>
          </table>
    </body>
    
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
    
<h1 style="text-align: start;">Dar de alta usuarioasdas</h1>

<form method="get" action="Inicio.jsp" class="row">
    <div class="col-md-6">
        <label class="form-label" aria-placeholder="Nombre">Numero de cuenta</label>
        <input type="text" class="form-control">
    </div>

    <div class="col-md-6">
        <label class="form-label">Tipo de cuenta</label>
        <select name="" id="" class="form-select">
        <option value="">NO ME ACUERDO CUALES ERAN XD</option>
    </select>
    </div>

    <div class="col-md-12">
        <label class="form-label" placeholder="Ingrese su apellido">CBU</label>
        <input type="text" class="form-control">
    </div>

    <div class="col-md-6">
        <label class="form-label">saldo</label>
        <input type="number" class="form-control">
    </div>

    <div class="col-md-6">
        <label class="form-label">cuenta a asignar</label>
        <select name="" id="" class="form-select">
        <option value="">(usuarios)</option>
    </select>
    

    <div class="col-md-12">
        <br>
        <button type="submit" class="btn btn-primary form-control">Dar de alta</button>
    </div>
</form>

</body>
</html>