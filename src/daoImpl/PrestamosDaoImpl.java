package daoImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;

import conexion.Conexion;
import dao.PrestamosDao;
import entidades.Cuentas;
import entidades.Localidades;
import entidades.Prestamos;
import entidades.Provincias;
import entidades.TipoCuentas;
import entidades.Usuarios;

public class PrestamosDaoImpl implements PrestamosDao
{

	@Override
	public ArrayList<Prestamos> obtenerTodos() {
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Prestamos> prestamos= new ArrayList<Prestamos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from prestamos inner join cuentas on (prestamos.NroCuentaDestino_Pr = cuentas.Nro_Cuentas) inner join tipocuentas on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) inner join usuarios on (cuentas.DNI_Cuentas = usuarios.DNI_Usr) inner join localidades on (usuarios.IdLocalidad_Usr = localidades.IdLocalidad_Loc and usuarios.IdProvincia_Usr = localidades.IdProvincia_Loc) inner join provincias on (localidades.IdProvincia_Loc = provincias.IdProvincia_Prov)"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				prestamos.add(getPrestamos(resultSet));
			}
			prestamos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prestamos;
	}

	@Override
	public ArrayList<Prestamos> prestXUsuario(Usuarios us) {
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Prestamos> prestamos= new ArrayList<Prestamos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from prestamos inner join cuentas " + 
		"	on (prestamos.NroCuentaDestino_Pr = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"		on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) inner join usuarios " + 
		"			on (cuentas.DNI_Cuentas = usuarios.DNI_Usr) inner join localidades " + 
		"				on (usuarios.IdLocalidad_Usr = localidades.IdLocalidad_Loc and usuarios.IdProvincia_Usr = localidades.IdProvincia_Loc) inner join provincias " + 
		"					on (localidades.IdProvincia_Loc = provincias.IdProvincia_Prov) " + 
		"where usuarios.DNI_Usr = '" + us.getDNI_Usr() + "';"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				prestamos.add(getPrestamos(resultSet));
			}
			prestamos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prestamos;
	}

	@Override
	public ArrayList<Prestamos> prestXFecha(Date fecha1, Date fecha2) {
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Prestamos> prestamos= new ArrayList<Prestamos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from prestamos inner join cuentas " + 
		"	on (prestamos.NroCuentaDestino_Pr = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"		on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) inner join usuarios " + 
		"			on (cuentas.DNI_Cuentas = usuarios.DNI_Usr) inner join localidades " + 
		"				on (usuarios.IdLocalidad_Usr = localidades.IdLocalidad_Loc and usuarios.IdProvincia_Usr = localidades.IdProvincia_Loc) inner join provincias " + 
		"					on (localidades.IdProvincia_Loc = provincias.IdProvincia_Prov) " + 
		"where prestamos.FechaSolicitado_Pr between '" + fecha1.toString() + "' and '" + fecha2.toString() + "';"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				prestamos.add(getPrestamos(resultSet));
			}
			prestamos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prestamos;
	}

	@Override
	public ArrayList<Prestamos> prestXImportePagar(float importe1, float importe2) {
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Prestamos> prestamos= new ArrayList<Prestamos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from prestamos inner join cuentas " + 
		"	on (prestamos.NroCuentaDestino_Pr = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"		on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) inner join usuarios " + 
		"			on (cuentas.DNI_Cuentas = usuarios.DNI_Usr) inner join localidades " + 
		"				on (usuarios.IdLocalidad_Usr = localidades.IdLocalidad_Loc and usuarios.IdProvincia_Usr = localidades.IdProvincia_Loc) inner join provincias " + 
		"					on (localidades.IdProvincia_Loc = provincias.IdProvincia_Prov) " + 
		"where prestamos.ImpResultante_Pr > '" + importe1 + "' and prestamos.ImpResultante_Pr < '" + importe2 + "';"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				prestamos.add(getPrestamos(resultSet));
			}
			prestamos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prestamos;
	}

	@Override
	public ArrayList<Prestamos> prestXImportePedido(float importe1, float importe2) {
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Prestamos> prestamos= new ArrayList<Prestamos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from prestamos inner join cuentas " + 
		"	on (prestamos.NroCuentaDestino_Pr = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"		on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) inner join usuarios " + 
		"			on (cuentas.DNI_Cuentas = usuarios.DNI_Usr) inner join localidades " + 
		"				on (usuarios.IdLocalidad_Usr = localidades.IdLocalidad_Loc and usuarios.IdProvincia_Usr = localidades.IdProvincia_Loc) inner join provincias " + 
		"					on (localidades.IdProvincia_Loc = provincias.IdProvincia_Prov) " + 
		"where prestamos.ImpSolicitado_Pr > '" + importe1 + "' and prestamos.ImpSolicitado_Pr < '" + importe2 + "';"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				prestamos.add(getPrestamos(resultSet));
			}
			prestamos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prestamos;
	}

	@Override
	public ArrayList<Prestamos> prestXCantidadCuotas(int cuotas) {
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Prestamos> prestamos= new ArrayList<Prestamos>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"Select * from prestamos inner join cuentas " + 
		"	on (prestamos.NroCuentaDestino_Pr = cuentas.Nro_Cuentas) inner join tipocuentas " + 
		"		on (cuentas.IdTipoCuenta_Cuentas = tipocuentas.Id_TipoCuenta) inner join usuarios " + 
		"			on (cuentas.DNI_Cuentas = usuarios.DNI_Usr) inner join localidades " + 
		"				on (usuarios.IdLocalidad_Usr = localidades.IdLocalidad_Loc and usuarios.IdProvincia_Usr = localidades.IdProvincia_Loc) inner join provincias " + 
		"					on (localidades.IdProvincia_Loc = provincias.IdProvincia_Prov) " + 
		"where prestamos.CantCuotas_Pr = '" + cuotas + "';"; 
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				prestamos.add(getPrestamos(resultSet));
			}
			prestamos.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prestamos;
	}
	
	private Prestamos getPrestamos(ResultSet resultSet) throws SQLException
	{
		
		//Datos cuenta
		int nro_Cuentas = resultSet.getInt("Nro_Cuentas");
		LocalDateTime fechaCreacion_Cuentas = resultSet.getTimestamp("FechaCreacion_Cuentas").toLocalDateTime();
		String cBU_Cuentas = resultSet.getString("CBU_Cuentas"); 
		float saldo_Cuentas = resultSet.getFloat("Saldo_Cuentas");
		boolean estado_Cuentas = resultSet.getBoolean("Estado_Cuentas");
		
		//Datos tipo de cuenta
		int Id_TipoCuenta = resultSet.getInt("Id_TipoCuenta");
		String Descripcion_TipoCuenta = resultSet.getString("Descripcion_TipoCuenta");
		
		//Datos usuario de la cuenta
		String DNI_Usr = resultSet.getString("DNI_Usr");
		String CUIL_Usr = resultSet.getString("CUIL_Usr");
		String Nombre_Usr = resultSet.getString("Nombre_Usr");
		String Apellido_Usr = resultSet.getString("Apellido_Usr");
		String Sexo_Usr = resultSet.getString("Sexo_Usr");
		String Nacionalidad_Usr  = resultSet.getString("Nacionalidad_Usr");
		LocalDate FechaNacimiento_Usr = resultSet.getDate("FechaNacimiento_Usr").toLocalDate();
		String Direccion_Usr= resultSet.getString("Direccion_Usr");
		Provincias Provincia_Usr = new Provincias(resultSet.getInt("IdProvincia_Usr"), resultSet.getString("Descripcion_Prov"));
		Localidades Localidad_Usr = new Localidades(Provincia_Usr, resultSet.getInt("IdLocalidad_Usr"), resultSet.getString("Descripcion_Loc"));
		String Email_Usr = resultSet.getString("Email_Usr");
		String Telefono_Usr = resultSet.getString("Telefono_Usr");
		boolean Tipo_Usr = resultSet.getBoolean("Tipo_Usr");
		String Usuario_Usr = resultSet.getString("Usuario_Usr");
		String Contrasenia_Usr = resultSet.getString("Contrasenia_Usr");
		boolean Estado_Usr = resultSet.getBoolean("Estado_Usr");
		
		//Datos prestamo
		
		int Id_Pr = resultSet.getInt("Id_Pr");
		Date FechaSolicitado_Pr = resultSet.getDate("FechaSolicitado_Pr");
		float ImpSolicitado_Pr = resultSet.getFloat("ImpSolicitado_Pr");
		float ImpResultante_Pr = resultSet.getFloat("ImpResultante_Pr");
		int PlazoMeses_Pr = resultSet.getInt("PlazoMeses_Pr");
		float ImpPagoAlMes_Pr = resultSet.getFloat("ImpPagoAlMes_Pr");
		int CantCuotas_Pr = resultSet.getInt("CantCuotas_Pr");
		boolean Autorizado_Pr = resultSet.getBoolean("Autorizado_Pr");
		boolean Estado_Pr = resultSet.getBoolean("Estado_Pr");
		
		
		return new Prestamos(
					Id_Pr,
					new Cuentas(
						nro_Cuentas,
						new Usuarios(DNI_Usr, CUIL_Usr,Nombre_Usr,  Apellido_Usr, Sexo_Usr, Nacionalidad_Usr, FechaNacimiento_Usr, Direccion_Usr,Provincia_Usr, Localidad_Usr ,Email_Usr,Telefono_Usr,  Tipo_Usr, Usuario_Usr,  Contrasenia_Usr, Estado_Usr),
						fechaCreacion_Cuentas,
						new TipoCuentas(Id_TipoCuenta,Descripcion_TipoCuenta),
						cBU_Cuentas,
						saldo_Cuentas,
						estado_Cuentas
					),
					FechaSolicitado_Pr,
					ImpSolicitado_Pr,
					ImpResultante_Pr,
					PlazoMeses_Pr,
					ImpPagoAlMes_Pr,
					CantCuotas_Pr,
					Autorizado_Pr,
					Estado_Pr
				);
	}
}
