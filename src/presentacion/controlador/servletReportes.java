package presentacion.controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Cuentas;
import negocio.CuentasNegocio;
import negocio.UsuariosNegocio;
import negocioImpl.CuentasNegocioImpl;
import negocioImpl.UsuariosNegocioImpl;

/**
 * Servlet implementation class servletReportes
 */
@WebServlet("/servletReportes")
public class servletReportes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CuentasNegocio negCuentas = new CuentasNegocioImpl();
	UsuariosNegocio negUser= new UsuariosNegocioImpl();
  
    public servletReportes() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("ParamRep")!=null) {
			cargarCuentas(request);
			
			cargarUsuarios(request);
			
			RequestDispatcher rd = request.getRequestDispatcher("Reportes.jsp");
			rd.forward(request, response);
		}
	}




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	private void cargarCuentas(HttpServletRequest request) {
		ArrayList <Cuentas> cuentas = null;
		cuentas = negCuentas.obtenerTodos();
		request.setAttribute("listaCuentas", cuentas);
		
	}
	private void cargarUsuarios(HttpServletRequest request) {
		request.setAttribute("listaUser", negUser.readALL());
	}

}
