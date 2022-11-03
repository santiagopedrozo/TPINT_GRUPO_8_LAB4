package negocioImpl;

import java.util.ArrayList;

import dao.LocalidadesDao;
import daoImpl.LocalidadesDaoImpl;
import entidades.Localidades;
import negocio.LocalidadesNegocio;

public class LocalidadesNegocioImpl implements LocalidadesNegocio {
	LocalidadesDao locDao = new LocalidadesDaoImpl();
	@Override
	public ArrayList<Localidades> readALL() {
		return locDao.readALL();
	}
}
