package daoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	public static Conexion instancia;
	private Connection connection;
	
	private Conexion()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			this.connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/bdpersonas","root","root");
			this.connection.setAutoCommit(false);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	public static Conexion getConexion()   
	{								
		if(instancia == null)
		{
			instancia = new Conexion();
		}
		return instancia;
	}

	public Connection getSQLConexion() 
	{
		return this.connection;
	}
	
	public void cerrarConexion()
	{
		try 
		{
			this.connection.close();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		instancia = null;
	}
	
	/* asi se llama a un sp de manera limpia xd
	 public boolean modifyPersonaSP(Persona persona)
	{
		Connection cn = null;
		  try
		  {
			 cn = DriverManager.getConnection(host+dbName,user,pass);
			 CallableStatement cst = cn.prepareCall("CALL sp_ModificarPersona(?,?,?)");
			 cst.setString(1, persona.getDni());
			 cst.setString(2, persona.getNombre());
			 cst.setString(3, persona.getApellido());
			 cst.execute();
			 return true;
		  }
		  catch (Exception e) {
			e.printStackTrace();
		}
		  finally {
				try {
					cn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		return false;
	}
	  */
}
