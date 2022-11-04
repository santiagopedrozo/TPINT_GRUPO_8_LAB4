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
		if (request.getParameter("paramUs")!=null) {
			System.out.println("toy adentro");
			cargarLocsUser(request, 1);
			cargarProvUser(request);
			RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean agrego=false;
		if(request.getParameter("btnAgregarLocs")!=null) {
			int idprov = Integer.parseInt(request.getParameter("ddlProvincias").toString());
			cargarProvUser(request); //Cargamos provincias de nuevo
			cargarLocsUser(request, idprov);
			RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			rd.forward(request, response);
		}
		
		if (request.getParameter("btnAgregarUsr")!=null) {
			System.out.println("hola mamita");
			String DNI_Usr = request.getParameter("txtDNI");
			String CUIL_Usr = request.getParameter("txtCUIL");
			String Nombre_Usr = request.getParameter("txtNombre");
			String Apellido_Usr = request.getParameter("txtApellido");
			String Sexo_Usr = request.getParameter("txtSexo");
			String Nacionalidad_Usr  = request.getParameter("txtNacionalidad");
			LocalDate FechaNacimiento_Usr = LocalDate.parse(request.getParameter("Fecha"));
			String Direccion_Usr= request.getParameter("txtDireccion");
			Provincias Provincia_Usr = new Provincias(Integer.parseInt(request.getParameter("ddlProvincias")),null);  
			Localidades Localidad_Usr = new Localidades(Provincia_Usr,locNeg.buscarNumLoc(request.getParameter("ddlLocalidades")),null);
			String Email_Usr = request.getParameter("txtEmail");
			String Telefono_Usr = request.getParameter("txtTelefono");
			boolean Tipo_Usr = Boolean.parseBoolean(request.getParameter("ddlTipo"));
			String Usuario_Usr = request.getParameter("txtUsuario");
			String Contrasenia_Usr = request.getParameter("txtContrasenia");
			Usuarios user = new Usuarios (DNI_Usr, CUIL_Usr,Nombre_Usr,  Apellido_Usr, Sexo_Usr, Nacionalidad_Usr, FechaNacimiento_Usr, Direccion_Usr,Provincia_Usr, Localidad_Usr ,Email_Usr,Telefono_Usr,  Tipo_Usr, Usuario_Usr,  Contrasenia_Usr, true);
			agrego=usrNeg.insert(user);
		}
		System.out.println(agrego);
		RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
		rd.forward(request, response);
		
	}
	
	public void cargarProvUser(HttpServletRequest request) {
		//Cargamos el ddl de Provincias
		ArrayList<Provincias>provincias=new ArrayList<Provincias>();
		provincias = provNeg.readALL();
		request.setAttribute("provincias", provincias);
	}
	
	public void cargarLocsUser(HttpServletRequest request, int idprov) {
		ArrayList<Localidades> localidades = locNeg.LocxProv(idprov);
		request.setAttribute("localidades",localidades);
	}
	

}
