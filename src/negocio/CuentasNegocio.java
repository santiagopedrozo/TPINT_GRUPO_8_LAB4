package negocio;

import java.util.ArrayList;
import java.util.Date;

import entidades.Cuentas;
import entidades.TipoCuentas;
import entidades.Usuarios;

public interface CuentasNegocio
{
	public ArrayList<Cuentas> obtenerTodos();
	public ArrayList<Cuentas> cuentasXPropietario(String DNI);
	public ArrayList<Cuentas> cuentasXFechaCreacion(Date fecha1, Date fecha2);
	public ArrayList<Cuentas> cuentasXTipo(TipoCuentas tipoCuentas);
	public int insert (Cuentas cuenta);
	public int delete (int id);
}
