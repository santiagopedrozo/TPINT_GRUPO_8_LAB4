package daoImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conexion.Conexion;
import dao.LocalidadesDao;
import entidades.Localidades;
import entidades.Provincias;

public class LocalidadesDaoImpl implements LocalidadesDao {
	@Override
	public ArrayList<Localidades> readALL(int idProv) {
		PreparedStatement statement;
		ResultSet resultSet; //Guarda el resultado de la query
		ArrayList<Localidades> localidades= new ArrayList<Localidades>();
		Conexion conexion = Conexion.getConexion();
		String consulta = 
		"SELECT Localidades.* ,Provincias.Descripcion_Prov from Localidades INNER JOIN Provincias ON IdProvincia_Loc = IdProvincia_Prov WHERE idprovincia_loc = " + idProv;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			statement = conexion.getSQLConexion().prepareStatement(consulta);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				localidades.add(getLocalidades(resultSet));
			}
			localidades.forEach(System.out::println);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return localidades;
	}	

	private Localidades getLocalidades(ResultSet resultSet) throws SQLException
	{
		
		int IdLocalidades_Loc = resultSet.getInt("IdLocalidad_Loc");
		int IdProvincia_Prov = resultSet.getInt("IdProvincia_Loc");
		String Descripcion_Prov= resultSet.getString("Descripcion_Prov");
		String Descripcion_Loc= resultSet.getString("Descripcion_Loc");
		
		return new Localidades(new Provincias (IdProvincia_Prov, Descripcion_Prov), IdLocalidades_Loc, Descripcion_Loc);
	}
		
}
