package presentacion.controlador;

import java.io.IOException;
import java.time.LocalDate;
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
import entidades.Cuentas;
import entidades.Localidades;
import entidades.Prestamos;
import entidades.Provincias;
import entidades.Usuarios;
import negocio.*;
import negocioImpl.*;
import entidades.Usuarios;

/**
 * Servlet implementation class ServletPrestamos
 */
@WebServlet("/ServletPrestamos")
public class ServletPrestamos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrestamosNegocio pn = new PrestamosNegocioImpl();
	private CuentasNegocio cn = new CuentasNegocioImpl();

    public ServletPrestamos() {}
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		autorizarPrestamo(request);
		request.setAttribute("listaPrestamos", pn.obtenerTodos());
		RequestDispatcher rd = request.getRequestDispatcher("AdministrarPrestamos.jsp");
		rd.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		autorizarPrestamo(request);
		RequestDispatcher rd = request.getRequestDispatcher("AdministrarPrestamos.jsp");
		rd.forward(request, response);
	}
	
	private void cargarPrestamos (HttpServletRequest request)
	{
		request.setAttribute("listaPrestamos", pn.obtenerTodos());
	}
	
	private void autorizarPrestamo (HttpServletRequest request)
	{
	   
		if (request.getParameter("btnAceptarPrestamo") != null)
		{
			for (Prestamos prestamo : pn.obtenerTodos())
			{
				if (prestamo.getId_Pr() ==  Integer.parseInt(request.getParameter("btnAceptarPrestamo")))
					//Autorizamos el prestamo
					pn.modificarAutorizado(prestamo, true);
					request.setAttribute("modificado", 1);
			}
		}
		if (request.getParameter("btnRechazarPrestamo") != null)
		{
			for (Prestamos prestamo : pn.obtenerTodos())
			{
				if (prestamo.getId_Pr() ==  Integer.parseInt(request.getParameter("btnRechazarPrestamo")))
				{
					//Rechazamos el prestamo
					pn.modificarAutorizado(prestamo, false);
					pn.eliminarPrestamo(prestamo);
					request.setAttribute("modificado", 0);
				}
			}
		}
	}


}
