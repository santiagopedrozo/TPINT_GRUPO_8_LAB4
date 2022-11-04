package dao;

import java.util.ArrayList;

import entidades.Localidades;

public interface LocalidadesDao {
	public ArrayList<Localidades> LocxProv(int idProv); 
	public int buscarNumLoc(String descripcion);
}
