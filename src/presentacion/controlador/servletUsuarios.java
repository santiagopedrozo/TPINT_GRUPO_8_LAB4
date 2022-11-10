package presentacion.controlador;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoImpl.UsuariosDaoImpl;
import entidades.Localidades;
import entidades.Provincias;
import entidades.Usuarios;
import negocio.LocalidadesNegocio;
import negocio.ProvinciasNegocio;
import negocio.UsuariosNegocio;
import negocioImpl.LocalidadesNegocioImpl;
import negocioImpl.ProvinciasNegocioImpl;
import negocioImpl.UsuariosNegocioImpl;

@WebServlet("/servletUsuarios")
public class servletUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuariosNegocio usrNeg= new UsuariosNegocioImpl();
	private ProvinciasNegocio provNeg = new ProvinciasNegocioImpl();
	private LocalidadesNegocio locNeg = new LocalidadesNegocioImpl();

    public servletUsuarios() {
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		refreshDeGet(request);
		cargarUsuarios(request);
		RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
		rd.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		if (request.getParameter("btnIniciar")!=null) {
			logicaIniciarSesion(request, response);
		}
		
		if (request.getParameter("hiddenEditar") != null) {
			request.setAttribute("usrSeleccionado", obtenerUsrPorDNI(request.getParameter("hiddenEditar").toString()));
			rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			refreshDePost(request);
		}

		if (request.getParameter("btnEliminarUsr")!=null) {
			eliminarUsr(request);
			rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			refreshDePost(request);
			System.out.println(obtenerUsrPorDNI(request.getParameter("hiddenEditar").toString()));
			RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			rd.forward(request, response);
		}
		
		refreshDePost(request);
		rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
		rd.forward(request, response);
	}
	
	private void eliminarUsr(HttpServletRequest request) {
		String DNI= request.getParameter("hiddenEliminarUsr");
		boolean mensajeDeleteUsr=usrNeg.delete(DNI);
		request.setAttribute("mensajeDeleteUsr", mensajeDeleteUsr);

	}

	private void refreshDeGet(HttpServletRequest request) {
		cargarProvinciasUser(request);
		cargarLocalidadesUser(request, -1);
	}
	
	private void refreshDePost(HttpServletRequest request) {
		cargarProvinciasUser(request);
		cargarUsuarios(request);
	}
	
	private Usuarios obtenerUsrPorDNI(String dni) {
		for(Usuarios usr : usrNeg.readALL()) {
			if(usr.getDNI_Usr().equals(dni))
				return usr;
		}
		
		return null;
	}
	
	private void logicaIniciarSesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Primero verificamos que el usuario exista mediante el iniciar sesion. Si devuelve true, nos fijamos que tipo es para devolver al JSP correcto
		RequestDispatcher rd;
		if (iniciarSesion(request)) {
			Usuarios user = (Usuarios)request.getSession().getAttribute("sessionUser");
			
			if (user.isTipo_Usr()==false) {
				rd = request.getRequestDispatcher("Inicio.jsp");
			}
			else {
				rd = request.getRequestDispatcher("MiCuenta.jsp");
			}
			rd.forward(request, response);			
		}
		//Si la funcion devuelve false, el usuario no existe!
		else {
			request.setAttribute("noExiste", true);
			rd = request.getRequestDispatcher("IniciarSesion.jsp");
			rd.forward(request, response);
		}
	}
	
	
	private void filtradoLocalidades(HttpServletRequest request) {
		int idProv = Integer.parseInt(request.getParameter("ddlProvincias").toString());
		cargarLocalidadesUser(request, idProv);
	}
	
	
	private void cargarProvinciasUser(HttpServletRequest request) {		
		request.setAttribute("provincias", provNeg.readALL());
	}
	
	private void cargarLocalidadesUser(HttpServletRequest request, int idProv) {
		request.setAttribute("localidades", locNeg.GetAllLocalidadesPorProv(idProv));
	}
	
	
	
	private boolean iniciarSesion(HttpServletRequest request) {
		String user = request.getParameter("txtUsuario");
		String contra = request.getParameter("txtContrase�a");
		boolean existe= usrNeg.existeUsuario(user, contra);
		if (existe) {
			Usuarios usuario= usrNeg.readOne(user);
			HttpSession sessionUser = request.getSession();
			sessionUser.setAttribute("sessionUser", usuario);
			return true;
		}
		else {
			System.out.println("no existo");
			return false;
		}
	}
	
	private void cargarUsuarios(HttpServletRequest request) {
		request.setAttribute("listaUser", usrNeg.readALL());
	}
}
