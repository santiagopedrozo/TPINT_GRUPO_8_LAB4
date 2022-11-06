package dao;

import java.util.ArrayList;
import java.util.List;

import entidades.Usuarios;

public interface UsuariosDao {
	public boolean insert(Usuarios usuario);
	public ArrayList<Usuarios> readALL();
	public Usuarios readOne(String nombreUsuario);
	public boolean existeUsuario(String user, String contra);
} 