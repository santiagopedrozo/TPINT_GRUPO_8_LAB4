package presentacion.controlador;

import java.io.IOException;
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
			cargarAgregarUser(request);
			RequestDispatcher rd = request.getRequestDispatcher("AdministrarUsuarios.jsp");
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("paramProv")!=null) {
			int idprov = Integer. request.getParameter("ddlProvincias").toString();
		}
	}
	
	public void cargarAgregarUser(HttpServletRequest request) {
		//Cargamos el ddl de Provincias
		ArrayList<Provincias>provincias=new ArrayList<Provincias>();
		provincias = provNeg.readALL();
		request.setAttribute("provincias", provincias);
	}

}
