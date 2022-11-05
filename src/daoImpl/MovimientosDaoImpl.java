package daoImpl;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;

import com.sun.jmx.snmp.Timestamp;

import conexion.Conexion;
import dao.MovimientosDao;
import entidades.Cuentas;
import entidades.Localidades;
import entidades.Movimientos;
import entidades.Provincias;
import entidades.TipoCuentas;
import entidades.TipoMovimientos;
import entidades.Usuarios;

public class MovimientosDaoImpl implements MovimientosDao
{

	@Override
	public ArrayList<Movimientos> obtenerTodos() 
	{
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Movimientos> movimientos= new ArrayList<Movimientos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from movimientos inner join tiposmovimientos " + 
		"	on (movimientos.IdTiposMov_Mov = tiposmovimientos.Id_TiposMov) inner join cuentas " + 
		"		on (movimientos.NroCuenta_Mov = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"			on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta)"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				movimientos.add(getMovimientos(resultSet));
			}
			movimientos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movimientos;
	}

	@Override
	public ArrayList<Movimientos> MovxUsuario(Usuarios usuario) //Por nombre y apellido de usuario
	{
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Movimientos> movimientos= new ArrayList<Movimientos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from movimientos inner join tiposmovimientos " + 
		"	on (movimientos.IdTiposMov_Mov = tiposmovimientos.Id_TiposMov) inner join cuentas " + 
		"		on (movimientos.NroCuenta_Mov = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"			on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) inner join usuarios " + 
		"				on (cuentas.DNI_Cuentas = usuarios.DNI_Usr) " + 
		"where usuarios.Nombre_Usr = '" + usuario.getNombre_Usr() + "' and usuarios.Apellido_Usr = '" + usuario.getApellido_Usr() + "';" + 
		""; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				movimientos.add(getMovimientos(resultSet));
			}
			movimientos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movimientos;
	}

	@Override
	public ArrayList<Movimientos> MovxTipo(TipoMovimientos tipo)
	{
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Movimientos> movimientos= new ArrayList<Movimientos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from movimientos inner join tiposmovimientos " + 
		"	on (movimientos.IdTiposMov_Mov = tiposmovimientos.Id_TiposMov) inner join cuentas " + 
		"		on (movimientos.NroCuenta_Mov = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"			on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) " + 
		"where tiposmovimientos = '" + tipo.getId_TiposMov() + "'"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				movimientos.add(getMovimientos(resultSet));
			}
			movimientos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movimientos;
	}

	@Override
	public ArrayList<Movimientos> MovxFecha(Date fecha1, Date fecha2) 
	{

		return null;
	}
	
	private Movimientos getMovimientos(ResultSet resultSet) throws SQLException
	{
		
		//Datos cuenta del movimiento
		int nro_Cuentas = resultSet.getInt("Nro_Cuentas");
		String dNI_Cuentas = resultSet.getString("DNI_Cuentas");
		LocalDateTime fechaCreacion_Cuentas = resultSet.getTimestamp("FechaCreacion_Cuentas").toLocalDateTime();
		String cBU_Cuentas = resultSet.getString("CBU_Cuentas"); 
		float saldo_Cuentas = resultSet.getFloat("Saldo_Cuentas");
		boolean estado_Cuentas = resultSet.getBoolean("Estado_Cuentas");
		
		//Datos tipo de movimiento
		
		int Id_TiposMov = resultSet.getInt("Id_TiposMov");
		String Descripcion_TiposMov = resultSet.getString("Descripcion_TiposMov");
		
		//Datos tipo de cuenta
		int Id_TipoCuenta = resultSet.getInt("Id_TipoCuenta");
		String Descripcion_TipoCuenta = resultSet.getString("Descripcion_TipoCuenta");
		
		//Datos movimiento
		
		int Id_Mov = resultSet.getInt("Id_Mov");
		Date Fecha_Mov = resultSet.getDate("Fecha_Mov");
		String Detalle_Mov = resultSet.getString("Detalle_Mov");
		float Importe_Mov = resultSet.getFloat("Importe_Mov");
		boolean Estado_Mov = resultSet.getBoolean("Estado_Mov");
		
		return new Movimientos(
				Id_Mov,
				new Cuentas(nro_Cuentas,dNI_Cuentas,fechaCreacion_Cuentas,new TipoCuentas(Id_TipoCuenta,Descripcion_TipoCuenta),cBU_Cuentas,saldo_Cuentas,estado_Cuentas),
				new TipoMovimientos(Id_TiposMov,Descripcion_TiposMov),
				Fecha_Mov,
				Detalle_Mov,
				Importe_Mov,
				Estado_Mov
				);
	}
	
}
