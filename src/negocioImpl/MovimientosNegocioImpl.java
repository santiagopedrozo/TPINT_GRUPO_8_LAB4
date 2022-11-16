package negocioImpl;

import java.util.ArrayList;
import java.util.Date;

import dao.MovimientosDao;
import daoImpl.MovimientosDaoImpl;
import entidades.Movimientos;
import entidades.TipoMovimientos;
import entidades.Usuarios;
import negocio.CuentasNegocio;
import negocio.MovimientosNegocio;

public class MovimientosNegocioImpl implements MovimientosNegocio {

	MovimientosDao md = new MovimientosDaoImpl();
	CuentasNegocio negCuentas = new CuentasNegocioImpl();
	
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

	@Override
	public ArrayList<Movimientos> MovxCuenta(int nroCuenta) {
		return md.MovxCuenta(nroCuenta);
	}

	@Override
	public int insert(Movimientos movimiento) {
			if (movimiento.getCuenta_Mov().getNro_Cuentas() != movimiento.getCuentaDestino_Mov().getNro_Cuentas()) {
				if (movimiento.getImporte_Mov() < movimiento.getCuenta_Mov().getSaldo_Cuentas()) {
				boolean inserto = md.insert(movimiento);
				if (inserto) {
					return 1;
				}
				else return 0;
			}
			else {
				return -1;
			}
		}
		else {
			return -2;
		}
		
	}

}
