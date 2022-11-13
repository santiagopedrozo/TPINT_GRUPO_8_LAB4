package presentacion.controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Cuentas;
import entidades.Movimientos;
import entidades.TipoMovimientos;
import entidades.Usuarios;
import negocio.CuentasNegocio;
import negocio.MovimientosNegocio;
import negocio.PrestamosNegocio;
import negocio.UsuariosNegocio;
import negocioImpl.CuentasNegocioImpl;
import negocioImpl.MovimientosNegocioImpl;
import negocioImpl.PrestamosNegocioImpl;
import negocioImpl.UsuariosNegocioImpl;

/**
 * Servlet implementation class servletReportes
 */
@WebServlet("/servletReportes")
public class servletReportes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CuentasNegocio negCuentas = new CuentasNegocioImpl();
	UsuariosNegocio negUser= new UsuariosNegocioImpl();
	MovimientosNegocioImpl negMov = new MovimientosNegocioImpl();
  
    public servletReportes() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//if (request.getParameter("ParamRep") != null) 
		//{	
			armarMovimientosFiltrados(request);
				
			cargarCuentas(request);
			
			cargarUsuarios(request);
			
			RequestDispatcher rd = request.getRequestDispatcher("Reportes.jsp");
			rd.forward(request, response);
		//}
	}




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	private void armarMovimientosFiltrados(HttpServletRequest request) 
	{
		ArrayList <Movimientos> listaMovimientos = negMov.obtenerTodos();			

		/*if (request.getParameter("txtNombreMovimiento") != null)
		{
			Usuarios us = new Usuarios();
			us.setDNI_Usr(request.getParameter("txtNombreMovimiento"));
			listaMovimientos.retainAll(negMov.MovxUsuario(us));
		}
		if (request.getParameter("fecha1Movimiento") != null && request.getParameter("fecha2Movimiento") != null) 
		{
			listaMovimientos.retainAll(negMov.MovxFecha(request.getParameter("fecha1Movimiento"),request.getParameter("fecha2Movimiento")));
		}
		/*if (request.getParameter("ddlProvincias") != null)
		{
			TipoMovimientos tipo = new TipoMovimientos();
			tipo.setDescripcion_TiposMov(request.getParameter("ddlProvincias"));
			listaMovimientos.retainAll(negMov.MovxTipo(tipo));
		}*/
		//if (request.getParameter("btnFiltrarMovimientos") != null)
		if (listaMovimientos.isEmpty())
			System.out.println("NO TIENE ELEMENTOS LA LISTAAAAAAAAAAAAAAAA/////////////////////////////////////");
		request.setAttribute("listaMovimientosFiltrada",listaMovimientos);
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
