package presentacion.controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Cuentas;
import entidades.Prestamos;
import entidades.Usuarios;
import negocio.CuentasNegocio;
import negocio.PrestamosNegocio;
import negocioImpl.CuentasNegocioImpl;
import negocioImpl.PrestamosNegocioImpl;

/**
 * Servlet implementation class ServletPrestamosUsuario
 */
@WebServlet("/ServletPrestamosUsuario")
public class ServletPrestamosUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrestamosNegocio pn = new PrestamosNegocioImpl();
	private CuentasNegocio cn = new CuentasNegocioImpl();
       
    public ServletPrestamosUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("ParamPrestamos")!=null) {
			cargarCuentasOrigen(request);
			obtenerAllPrestamosXusr(request);
			RequestDispatcher rd = request.getRequestDispatcher("Prestamos.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cargarCuentasOrigen(request);
		solicitarPrestamo(request);
		obtenerAllPrestamosXusr(request);
		pagarPrestamoLogica(request);
		
		RequestDispatcher rd = request.getRequestDispatcher("Prestamos.jsp");
		rd.forward(request, response);
	}
	
	private void solicitarPrestamo(HttpServletRequest request) {
		if(request.getParameter("btnPedirPrestamo") != null) {
			insertPrestamo(request);
		}
	}
	
	private void pagarPrestamoLogica(HttpServletRequest request) {
		if(request.getParameter("btnPagar") != null) {
			System.out.println("paga prestamo");
			pagarPrestamo(request);
		}
			
	}
	
	private void pagarPrestamo(HttpServletRequest request) {
		request.setAttribute("prestamoAPagar",  obtenerPrestamo( Integer.parseInt(request.getParameter("prestamoSeleccionado")), request));
	}
	
	private Prestamos obtenerPrestamo(int idPrestamo, HttpServletRequest request) {
		System.out.println("id: " + idPrestamo);
		for(Prestamos p : pn.prestXUsuario((Usuarios)request.getSession().getAttribute("sessionUser"))) {
			if(p.getId_Pr() == idPrestamo) 
				return p;
		}
		return null;
	}
	
	private void insertPrestamo(HttpServletRequest request) {
		request.setAttribute("resultadoPrestamo",  pn.agregarPrestamo(asignarInputsPrestamo(request)));
	}
	
	private void obtenerAllPrestamosXusr(HttpServletRequest request) {
		request.setAttribute("prestamosDeUsr", pn.prestXUsuario((Usuarios)request.getSession().getAttribute("sessionUser")));
	}
	
	private void cargarCuentasOrigen(HttpServletRequest request) {
		Usuarios user = (Usuarios) request.getSession().getAttribute("sessionUser");
		request.setAttribute("listaCuentasOrigen", cn.cuentasXPropietario(user.getDNI_Usr()));
	}
	
	private Prestamos asignarInputsPrestamo(HttpServletRequest request) {
		Usuarios usr = (Usuarios)request.getSession().getAttribute("sessionUser");
	    Cuentas CuentaDestino = obtenerCuentaXNro(Integer.parseInt(request.getParameter("ddlCuentaOrigen")));
	    float ImpSolicitado_Pr = Float.parseFloat(request.getParameter("txtImporte"));
	    float ImpResultante_Pr = (float) (ImpSolicitado_Pr * 1.70);
	    int PlazoMeses_Pr = Integer.parseInt(request.getParameter("ddlCuotas"));
	    float ImpPagoAlMes = ImpResultante_Pr / PlazoMeses_Pr;
	    return new Prestamos(usr, CuentaDestino, ImpSolicitado_Pr, ImpResultante_Pr, PlazoMeses_Pr, ImpPagoAlMes);
	}
	
	private Cuentas obtenerCuentaXNro(int nro) {
		for(Cuentas cta : cn.obtenerTodos()) {
			if(cta.getNro_Cuentas() == nro)
				return cta;
		}
		return null;
	}
	
	private void obtenerAllPrestamos(HttpServletRequest request){
		request.setAttribute("listaPrestamos", pn.obtenerTodos());
	}
	
	private void cargarPrestamos (HttpServletRequest request)
	{
		request.setAttribute("listaPrestamos", pn.obtenerTodos());
	}

}
