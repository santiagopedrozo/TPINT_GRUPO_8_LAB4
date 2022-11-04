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

import entidades.Localidades;
import entidades.Provincias;
import negocio.LocalidadesNegocio;
import negocio.ProvinciasNegocio;
import negocioImpl.LocalidadesNegocioImpl;
import negocioImpl.ProvinciasNegocioImpl;

@WebServlet("/servletUsuarios")
public class servletUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProvinciasNegocio provNeg = new ProvinciasNegocioImpl();
	private LocalidadesNegocio locNeg = new LocalidadesNegocioImpl();

    public servletUsuarios() {
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("paramUs")!=null) {
			cargarLocsUser(request, 1);
			cargarProvUser(request);
			RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("entre");
		if(request.getParameter("btnAgregarLocs")!=null) {
			int idprov = Integer.parseInt(request.getParameter("ddlProvincias").toString());
			cargarProvUser(request); //Cargamos provincias de nuevo
			cargarLocsUser(request, idprov);
			RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			rd.forward(request, response);
		}
		
		if (request.getParameter("btnAgregarUsr")!=null) {
			String DNI_Usr = request.getParameter("txtDNI");
			String CUIL_Usr = request.getParameter("txtCUIL");
			String Nombre_Usr = request.getParameter("txtNombre");
			String Apellido_Usr = request.getParameter("txtApellido");
			String Sexo_Usr = request.getParameter("txtSexo");
			String Nacionalidad_Usr  = request.getParameter("txtNacionalidad");
			//Date FechaNacimiento_Usr = Date.parse("2002-3-3"); 
			//String Direccion_Usr= request.getParameter("txtDNI");
			//Provincias Provincia_Usr = request.getParameter("txtDNI");
			//Localidades Localidad_Usr = request.getParameter("txtDNI");
			//String Email_Usr = request.getParameter("txtDNI");
			//String Telefono_Usr = request.getParameter("txtDNI");
			//boolean Tipo_Usr = request.getParameter("txtDNI");
			//String Usuario_Usr = request.getParameter("txtDNI");
			//String Contrasenia_Usr = request.getParameter("txtDNI");
			//boolean Estado_Usr = request.getParameter("txtDNI");
			
		}
		
	}
	
	public void cargarProvUser(HttpServletRequest request) {
		//Cargamos el ddl de Provincias
		ArrayList<Provincias>provincias=new ArrayList<Provincias>();
		provincias = provNeg.readALL();
		request.setAttribute("provincias", provincias);
	}
	
	public void cargarLocsUser(HttpServletRequest request, int idprov) {
		ArrayList<Localidades> localidades = locNeg.readALL(idprov);
		request.setAttribute("localidades",localidades);
	}
	

}
