package negocioImpl;

import java.util.ArrayList;
import java.util.Date;
import dao.PrestamosDao;
import entidades.Prestamos;
import entidades.Usuarios;
import negocio.PrestamosNegocio;
import daoImpl.PrestamosDaoImpl;

public class PrestamosNegocioImpl implements PrestamosNegocio {

	private PrestamosDaoImpl prDao = new PrestamosDaoImpl();
	
	@Override
	public ArrayList<Prestamos> obtenerTodos() {
		return prDao.obtenerTodos();
	}

	@Override
	public ArrayList<Prestamos> prestXUsuario(Usuarios us) {
		return prDao.prestXUsuario(us);
	}

	@Override
	public ArrayList<Prestamos> prestXFecha(Date fecha1, Date fecha2) {
		return prDao.prestXFecha(fecha1, fecha2);
	}

	@Override
	public ArrayList<Prestamos> prestXImportePagar(float importe1, float importe2) {
		return prDao.prestXImportePagar(importe1, importe2);
	}

	@Override
	public ArrayList<Prestamos> prestXImportePedido(float importe1, float importe2) {
		return prDao.prestXImportePedido(importe1, importe2);
	}

	@Override
	public ArrayList<Prestamos> prestXCantidadCuotas(int cuotas) {
		return prDao.prestXCantidadCuotas(cuotas);
	}

}
