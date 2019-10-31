package model;

import java.sql.Connection;
import java.sql.Statement;

public class UserInterestDAO {
	public static void UpdateUserInterest(String userName, int categoriesId, String categoriesContentId) throws Exception {

	
		Connection connection = null;
		Statement statement = null;
		String query = null;
		try {
			connection = DBManager.getConnection();
			statement = connection.createStatement();
			query = "INSERT INTO `Project`.`UserInterest` (`UserName`, `CategoriesId`, `CategoriesContentId`) VALUES ('"
					+ userName + "', '" + categoriesId + "', '" + categoriesContentId + "');";

			statement.executeUpdate(query);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (connection != null)
				connection.close();
		}
		return;
	}

	public static void DeleteHistory(String userName) throws Exception {

		System.out.println("User Interest Delete in process of "+userName);
		Connection connection = null;
		Statement statement = null;
		String query = null;
		try {
			connection = DBManager.getConnection();
			statement = connection.createStatement();
			query = "Delete from UserInterest where UserName='"+userName+"';";
			statement.executeUpdate(query);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (connection != null)
				connection.close();
		}
		return;
	
}
}
