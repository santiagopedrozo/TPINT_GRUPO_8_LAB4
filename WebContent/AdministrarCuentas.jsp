<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administración cuentas</title>
</head>
<body>
	<%@ include file="MasterPageAdmin.html" %>
   <br>
  <div class="container-fluid" style="width:70%;">
    <div class="card text-center">
        <div class="card-header ">
          <h5>Cuentas</h5>
        </div>
        <table class="table table-hover">
            <thead>
              <tr>
                <th> </th>  
                <th>Tipo de cuenta</th>  
                <th>CBU</th> 
                <th>IdCuenta</th>  
                <th>DNI</th>
                <th>Fecha creación</th> 
                <th>Saldo</th>
                <th>Estado</th> 
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">
                  <button type="button" class="btn btn-outline-success">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </button>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                  
                </th>    
                <td>0001</td>  
                <td>29991111222233330000</td>
                <td>1</td>  
                <td>2589021</td>
                <td>23/01/2022</td>   
                <td>69.000$</td>
                <td>true</td>
              </tr>
            </tbody>
            <tbody>
              <tr>
                <th scope="row">
                  <button type="button" class="btn btn-outline-success">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </button>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                  
                </th>    
                <td>0001</td>  
                <td>29991111222233330000</td>
                <td>1</td>  
                <td>2589021</td>
                <td>23/01/2022</td>   
                <td>69.000$</td>
                <td>true</td>
              </tr>
            </tbody>
            <tbody>
              <tr>
                <th scope="row">
                  <button type="button" class="btn btn-outline-success">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </button>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                  
                </th>    
                <td>0001</td>  
                <td>29991111222233330000</td>
                <td>1</td>  
                <td>2589021</td>
                <td>23/01/2022</td>   
                <td>69.000$</td>
                <td>true</td>
              </tr>
            </tbody>
            <tbody>
              <tr>
                <th scope="row">
                  <button type="button" class="btn btn-outline-success">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </button>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                  
                </th>    
                <td>0001</td>  
                <td>29991111222233330000</td>
                <td>1</td>  
                <td>2589021</td>
                <td>23/01/2022</td>   
                <td>69.000$</td>
                <td>true</td>
              </tr>
            </tbody>

            <tbody>
              <tr>
                <th scope="row">
                  <button type="button" class="btn btn-outline-success">
                    <i class="fa-solid fa-pen-to-square"></i>
                  </button>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fa-solid fa-trash"></i>
                  </button>
                  
                </th>    
                <td>0001</td>  
                <td>29991111222233330000</td>
                <td>1</td>  
                <td>2589021</td>
                <td>23/01/2022</td>   
                <td>69.000$</td>
                <td>true</td>
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
  <div class="container-fluid" style="width:50%;">
    <div class="card text-center">
        <div class="card-header"><h5>Crear y asignar cuenta</h5></div>
        <div class="card-body">
          <form method="get" action="Inicio.jsp" class="row">
            
        
            <div class="col-md-12">
              <div class="form-floating">
                <select class="form-select" id="floatingSelect" aria-label="-">
                  <option selected>Elegir tipo de cuenta</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
                <label for="floatingSelect">Tipo de cuentas</label>
              </div>
            </div>
            
            <br>
        
            <div class="col-md-12">
              <div class="col-md-12">
                <div class="form-floating mb-3">
                  <input type="text" 
                  class="form-control" 
                  oninput="this.value =this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" 
                  minlength="16"
                  maxlength="16"
                  placeholder="-"
                  >
                  <label for="floatingInput">CBU</label>
                </div>
              </div> 
            </div>

     		 <br>
        
            <div class="col-md-12">
              <div class="form-floating">
                <select class="form-select" id="floatingSelect" aria-label="-">
                  <option selected>Elegir usuario</option>
                  <option value="1">Uno</option>
                  <option value="2">Dos</option>
                  <option value="3">Tres</option>
                </select>
                <label for="floatingSelect">Usuario asignado</label>
              </div>
            </div>
            
            <div class="col-md-12">
                <button type="submit" class="btn btn-outline-primary form-control btn-lg">Dar de alta cuenta</button>
            </div>
          </form>
        </div>
    </div>
    <br>
  </div>
   
    <%@ include file="FooterPage.html" %>

</body>
</html>