package negocioImpl;

import java.util.ArrayList;
import java.util.Date;

import dao.MovimientosDao;
import daoImpl.MovimientosDaoImpl;
import entidades.Movimientos;
import entidades.TipoMovimientos;
import entidades.Usuarios;
import negocio.MovimientosNegocio;

public class MovimientosNegocioImpl implements MovimientosNegocio {

	MovimientosDaoImpl md = new MovimientosDaoImpl();
	
	@Override
	public ArrayList<Movimientos> obtenerTodos() {
		return md.obtenerTodos();
	}

	@Override
	public ArrayList<Movimientos> MovxUsuario(Usuarios usuario) {
		return md.MovxUsuario(usuario);
	}

	@Override
	public ArrayList<Movimientos> MovxTipo(TipoMovimientos tipo) {
		return md.MovxTipo(tipo);
	}

	@Override
	public ArrayList<Movimientos> MovxFecha(String fecha1, String fecha2) {
		return md.MovxFecha(fecha1, fecha2);
	}

}
