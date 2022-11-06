package negocio;

import entidades.Usuarios;

public interface UsuariosNegocio {

	public boolean insert(Usuarios usuario);
	public boolean existeUsuario(String user, String contra);
	public Usuarios readOne(String user);
}
