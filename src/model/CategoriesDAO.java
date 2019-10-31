package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoriesDAO {
	
	
	public static List<Categories> getCategories() throws Exception{
		ArrayList<Categories> categories = new ArrayList<Categories>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		try{
			connection = DBManager.getConnection();
			statement = connection.createStatement();
			
			resultSet = statement.executeQuery("select * from Categories");
			while(resultSet.next()){
				Categories cat = new Categories(resultSet.getInt(1),resultSet.getString(2));
				categories.add(cat);
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			if(connection != null)
				connection.close();
		}
		
		
		return categories;
	}
	
	

}
