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
	private ProvinciasNegocio provNeg = new ProvinciasNegocioImpl();
	private LocalidadesNegocio locNeg = new LocalidadesNegocioImpl();
	private UsuariosNegocio usrNeg= new UsuariosNegocioImpl();

    public servletUsuarios() {
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		refreshDeGet(request);
		cargarUsuarios(request);
		RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
		rd.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("provSeleccionada") != null && request.getParameter("btnAgregarUsr") == null) //cuando sean muchos estaria bueno que sea un switch de parametros
			filtradoLocalidades(request);	
		if (request.getParameter("btnAgregarUsr")!=null) {
			asignarInputsAEntidad(request);
		} 
		if (request.getParameter("btnIniciar")!=null) {
			//Primero verificamos que el usuario exista mediante el iniciar sesion. Si devuelve true, nos fijamos que tipo es para devolver al JSP correcto
			if (iniciarSesion(request)) {
				Usuarios user = (Usuarios)request.getSession().getAttribute("sessionUser");
				RequestDispatcher rd;
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
				RequestDispatcher rd = request.getRequestDispatcher("IniciarSesion.jsp");
				rd.forward(request, response);
			}
			
		}
	}
	
	private void refreshDeGet(HttpServletRequest request) {
		cargarProvinciasUser(request);
		cargarLocalidadesUser(request, -1);
	}
	
	private void refreshDePost(HttpServletRequest request){
		cargarProvinciasUser(request);
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
	
	private void asignarInputsAEntidad(HttpServletRequest request) {
		boolean agrego=false;
		String DNI_Usr = request.getParameter("txtDNI");
		String CUIL_Usr = request.getParameter("txtCUIL");
		String Nombre_Usr = request.getParameter("txtNombre");
		String Apellido_Usr = request.getParameter("txtApellido");
		String Sexo_Usr = request.getParameter("txtSexo");
		String Nacionalidad_Usr  = request.getParameter("txtNacionalidad");
		System.out.println("antes de parsear fecha" + LocalDate.parse(request.getParameter("Fecha")));
		LocalDate FechaNacimiento_Usr = LocalDate.parse(request.getParameter("Fecha"));
		System.out.println("fecha parseada: " + FechaNacimiento_Usr.toString());
		String Direccion_Usr= request.getParameter("txtDireccion");
		Provincias Provincia_Usr = new Provincias(Integer.parseInt(request.getParameter("ddlProvincias")),null);  
		Localidades Localidad_Usr = new Localidades(Provincia_Usr,locNeg.buscarNumLoc(request.getParameter("ddlLocalidades")),null);
		String Email_Usr = request.getParameter("txtEmail");
		String Telefono_Usr = request.getParameter("txtTelefono");
		boolean Tipo_Usr = Boolean.parseBoolean(request.getParameter("ddlTipo"));
		String Usuario_Usr = request.getParameter("txtUsuario");
		String Contrasenia_Usr = request.getParameter("txtContrasenia");
		Usuarios user = new Usuarios (DNI_Usr, CUIL_Usr,Nombre_Usr,  Apellido_Usr, Sexo_Usr, Nacionalidad_Usr, FechaNacimiento_Usr, Direccion_Usr,Provincia_Usr, Localidad_Usr ,Email_Usr,Telefono_Usr,  Tipo_Usr, Usuario_Usr,  Contrasenia_Usr, true);
		//otra funcion aca
		agrego=usrNeg.insert(user);
		System.out.println(agrego);
	}
	
	private boolean iniciarSesion(HttpServletRequest request) {
		String user = request.getParameter("txtUsuario");
		String contra = request.getParameter("txtContraseña");
		boolean existe=usrNeg.existeUsuario(user, contra);
		if (existe) {
			Usuarios usuario=usrNeg.readOne(user);
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
		ArrayList <Usuarios> users = null;
		users = usrNeg.readALL();
		request.setAttribute("listaUser", users);
		
	}
}
