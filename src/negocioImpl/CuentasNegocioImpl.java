package negocioImpl;

import java.util.ArrayList;
import java.util.Date;

import dao.CuentasDao;
import entidades.Cuentas;
import entidades.TipoCuentas;
import entidades.Usuarios;
import negocio.CuentasNegocio;

public class CuentasNegocioImpl implements CuentasNegocio {

	private CuentasDao cd;
	
	@Override
	public ArrayList<Cuentas> obtenerTodos() {
		return cd.obtenerTodos();
	}

	@Override
	public ArrayList<Cuentas> cuentasXPropietario(Usuarios us) {
		return cd.cuentasXPropietario(us);
	}

	@Override
	public ArrayList<Cuentas> cuentasXFechaCreacion(Date fecha1, Date fecha2) {
		return cd.cuentasXFechaCreacion(fecha1, fecha2);
	}

	@Override
	public ArrayList<Cuentas> cuentasXTipo(TipoCuentas tipoCuentas) {
		return cd.cuentasXTipo(tipoCuentas);
	}
}
