package presentacion.controlador;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Localidades;
import entidades.Provincias;
import entidades.Usuarios;
import negocio.LocalidadesNegocio;
import negocio.ProvinciasNegocio;
import negocio.UsuariosNegocio;
import negocioImpl.LocalidadesNegocioImpl;
import negocioImpl.ProvinciasNegocioImpl;
import negocioImpl.UsuariosNegocioImpl;


@WebServlet("/ModificarUsuario")
public class ModificarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProvinciasNegocio provNeg = new ProvinciasNegocioImpl();
	private LocalidadesNegocio locNeg = new LocalidadesNegocioImpl();
	
    public ModificarUsuario() {
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("provSeleccionada") != null && request.getParameter("btnAgregarUsr") == null) //cuando sean muchos estaria bueno que sea un switch de parametros
			filtradoLocalidades(request);
		
		if (request.getParameter("btnModificar")!=null) {
			//request.setAttribute("estadoInsertado", insert(request));
			cargarLocalidadesUser(request, -1);
		}
			
		refreshPost(request);
		RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
		rd.forward(request, response);	
	}
		
	private void refreshPost(HttpServletRequest request) {
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
	/*
	private Boolean insert(HttpServletRequest request) {
		return usrNeg.insert(asignarInputsAEntidad(request));
	}
	*/
	private Usuarios asignarInputsAEntidad(HttpServletRequest request) {
		String DNI_Usr = request.getParameter("txtDNIEdit");
		String CUIL_Usr = request.getParameter("txtCUILEdit");
		String Nombre_Usr = request.getParameter("txtNombreEdit");
		String Apellido_Usr = request.getParameter("txtApellidoEdit");
		String Sexo_Usr = request.getParameter("rbSexoEdit");
		String Nacionalidad_Usr  = request.getParameter("txtNacionalidadEdit");
		LocalDate FechaNacimiento_Usr = LocalDate.parse(request.getParameter("FechaEdit"));
		String Direccion_Usr= request.getParameter("txtDireccionEdit");
		Provincias Provincia_Usr = new Provincias(Integer.parseInt(request.getParameter("ddlProvinciasEdit")),null);  
		Localidades Localidad_Usr = new Localidades(Provincia_Usr,locNeg.buscarNumLoc(request.getParameter("ddlLocalidadesEdit")),null);
		String Email_Usr = request.getParameter("txtEmailEdit");
		String Telefono_Usr = request.getParameter("txtTelefonoEdit");
		boolean Tipo_Usr = Boolean.parseBoolean(request.getParameter("ddlTipoEdit"));
		String Usuario_Usr = request.getParameter("txtUsuarioEdit");
		String Contrasenia_Usr = request.getParameter("txtContraseniaEdit");
		return new Usuarios (DNI_Usr, CUIL_Usr,Nombre_Usr,  Apellido_Usr, Sexo_Usr, Nacionalidad_Usr, FechaNacimiento_Usr, Direccion_Usr,Provincia_Usr, Localidad_Usr ,Email_Usr,Telefono_Usr,  Tipo_Usr, Usuario_Usr,  Contrasenia_Usr, true);	
	}

}
