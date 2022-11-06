package negocioImpl;

import java.util.ArrayList;
import java.util.Date;

import dao.PrestamosDao;
import entidades.Prestamos;
import entidades.Usuarios;
import negocio.PrestamosNegocio;

public class PrestamosNegocioImpl implements PrestamosNegocio {

	private PrestamosDao prestamosDao;
	
	@Override
	public ArrayList<Prestamos> obtenerTodos() {
		return prestamosDao.obtenerTodos();
	}

	@Override
	public ArrayList<Prestamos> prestXUsuario(Usuarios us) {
		return prestamosDao.prestXUsuario(us);
	}

	@Override
	public ArrayList<Prestamos> prestXFecha(Date fecha1, Date fecha2) {
		return prestamosDao.prestXFecha(fecha1, fecha2);
	}

	@Override
	public ArrayList<Prestamos> prestXImportePagar(float importe1, float importe2) {
		return prestamosDao.prestXImportePagar(importe1, importe2);
	}

	@Override
	public ArrayList<Prestamos> prestXImportePedido(float importe1, float importe2) {
		return prestamosDao.prestXImportePedido(importe1, importe2);
	}

	@Override
	public ArrayList<Prestamos> prestXCantidadCuotas(int cuotas) {
		return prestamosDao.prestXCantidadCuotas(cuotas);
	}

}
