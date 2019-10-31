package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Image;

public class ImageDAO {

	public static List<Image> getImages() throws Exception{
		List<Image> images = new ArrayList<Image>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try{
			connection = (Connection)DBManager.getConnection();
			statement = connection.createStatement();			
			resultSet = statement.executeQuery("SELECT * FROM Project.CategoriesContent\n" + 
					"order by rand();");
			while(resultSet.next()){
				Image image = new Image(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getInt(4));
				images.add(image);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			if(connection != null)
				connection.close();
		}
		return images;
	}
	
	public static List<Image> getAddsImages(String userName) throws Exception{
		List<Image> images = new ArrayList<Image>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try{
			connection = (Connection)DBManager.getConnection();
			statement = connection.createStatement();			
			resultSet = statement.executeQuery("call Project.AddsRecommend('"+userName+"');\n" + 
					"");
			while(resultSet.next()){
				Image image = new Image(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getInt(4));
				images.add(image);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			if(connection != null)
				connection.close();
		}
		return images;
	}
	
	public static List<Image> getUserInterestImages(String userName) throws Exception{
		List<Image> images = new ArrayList<Image>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try{
			connection = (Connection)DBManager.getConnection();
			statement = connection.createStatement();			
			resultSet = statement.executeQuery("call Project.MyInterst('"+userName+"');\n" + 
					"");
			while(resultSet.next()){
				Image image = new Image(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getInt(4));
				images.add(image);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			if(connection != null)
				connection.close();
		}
		return images;
	}

	public static List<Image> getCategoriesImages(int categoriesId) throws Exception{
		List<Image> images = new ArrayList<Image>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try{
			connection = (Connection)DBManager.getConnection();
			statement = connection.createStatement();			
			resultSet = statement.executeQuery("call Project.CategoriesDisplay("+categoriesId+");\n" + 
					"");
			while(resultSet.next()){
				Image image = new Image(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getInt(4));
				images.add(image);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			if(connection != null)
				connection.close();
		}
		return images;
	}


}
