package negocio;

import java.util.ArrayList;
import java.util.Date;

import entidades.Cuentas;
import entidades.TipoCuentas;
import entidades.Usuarios;

public interface CuentasNegocio
{
	public ArrayList<Cuentas> obtenerTodos();
	public ArrayList<Cuentas> cuentasXPropietario(Usuarios us);
	public ArrayList<Cuentas> cuentasXFechaCreacion(Date fecha1, Date fecha2);
	public ArrayList<Cuentas> cuentasXTipo(TipoCuentas tipoCuentas);
}
