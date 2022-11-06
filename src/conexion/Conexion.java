package conexion;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
			"jdbc:mysql://localhost:3306/bd_tpint_labiv","root","root");
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
	
	public static Boolean existe(String consulta)
    {
        PreparedStatement statement;
		ResultSet resultSet;
		boolean existe=false;
		try 
		{
			statement = Conexion.getConexion().getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			resultSet.next();
			String user = resultSet.getString("Usuario_Usr");
			if (!user.isEmpty())existe= true;
		} 
		catch (SQLException e) 
		{
			existe=false;
		}
		return existe;
    }
	
	
}
