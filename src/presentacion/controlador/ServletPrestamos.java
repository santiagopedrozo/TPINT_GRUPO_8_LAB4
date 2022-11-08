package presentacion.controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PrestamosDao;
import dao.UsuariosDao;
import daoImpl.PrestamosDaoImpl;
import daoImpl.UsuariosDaoImpl;
import entidades.Usuarios;
import negocio.PrestamosNegocio;
import negocioImpl.PrestamosNegocioImpl;

/**
 * Servlet implementation class ServletPrestamos
 */
@WebServlet("/ServletPrestamos")
public class ServletPrestamos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrestamosDao pd = new PrestamosDaoImpl();
    private PrestamosNegocio pn = new PrestamosNegocioImpl();
	
    public ServletPrestamos() {}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cargarUsuarios(request);
		RequestDispatcher rd = request.getRequestDispatcher("/AdministrarPrestamos.jsp");
		rd.forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	private void cargarUsuarios(HttpServletRequest request) {
		request.setAttribute("listaPrestamos", pn.obtenerTodos());
		System.out.println(pn.obtenerTodos().get(0));
	}

}
