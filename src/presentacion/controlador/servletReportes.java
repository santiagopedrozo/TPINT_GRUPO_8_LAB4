package presentacion.controlador;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.chrono.ChronoLocalDate;
import java.util.ArrayList;
import java.util.Iterator;

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
		
		RequestDispatcher rd = request.getRequestDispatcher("Reportes.jsp");
		rd.forward(request, response);
	}
	
	private void armarMovimientosFiltrados(HttpServletRequest request) 
	{
		ArrayList <Movimientos> listaMovimientos = negMov.obtenerTodos();

		if (request.getParameter("txtNombreMovimiento") != "")
		{
			listaMovimientos.removeIf(s -> !s.getCuenta_Mov().getUsuario_Cuentas().getDNI_Usr().equals(request.getParameter("txtNombreMovimiento")));
		}
		if (request.getParameter("txtImporte1") != "" || request.getParameter("txtImporte2") != "") 
		{
			int imp1 = Integer.parseInt(request.getParameter("txtImporte1"));
			int imp2 = Integer.parseInt(request.getParameter("txtImporte2"));
			
			listaMovimientos.removeIf(s -> s.getImporte_Mov() < imp1 || s.getImporte_Mov() > imp2 );
			
		}
		if (request.getParameter("ddlTipos") != null)
		{
			listaMovimientos.removeIf(s -> s.getTiposMov_Mov().getId_TiposMov() != Integer.parseInt((request.getParameter("ddlTipos"))));
		}
		if (request.getParameter("btnFiltrarMovimientos") != null)
			request.setAttribute("listaMovimientosFiltrada", listaMovimientos);
		else
			request.setAttribute("listaMovimientosFiltrada", negMov.obtenerTodos());
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
