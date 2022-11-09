package negocioImpl;

import java.util.ArrayList;
import java.util.ListIterator;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import dao.UsuariosDao;
import daoImpl.UsuariosDaoImpl;
import entidades.Usuarios;
import negocio.UsuariosNegocio;

public class UsuariosNegocioImpl implements UsuariosNegocio {
	UsuariosDao userDao = new UsuariosDaoImpl();
	@Override
	public Boolean insert(Usuarios usuario) {
		if (existe(usuario.getDNI_Usr(), usuario.getCUIL_Usr(), usuario.getEmail_Usr(), usuario.getUsuario_Usr())==false) {
			return userDao.insert(usuario);
		}
		return false;
	}
	
	
	public boolean existe(String DNI, String CUIL, String Email, String Usuario) {
		ArrayList<Usuarios> userList = new ArrayList<Usuarios>();
		userList = userDao.readALL(); //Traigo todos los usuarios para comparar con el nuevo a agregar
		for (Usuarios user : userList) {
			if (user.getDNI_Usr() == DNI) return true;
			if (user.getCUIL_Usr() == CUIL) return true;
			if (user.getEmail_Usr() == Email) return true;
			if (user.getUsuario_Usr()== Usuario) return true;
		}

		return false;
	}


	@Override
	public boolean existeUsuario(String user, String contra) {
		if (userDao.existeUsuario(user,contra)) {
			return true;	
		}
		return false;
	}


	@Override
	public Usuarios readOne(String user) {
		return userDao.readOne(user);
		
	}


	@Override
	public ArrayList<Usuarios> readALL() {
		return userDao.readALL(); 
	}
	

}
