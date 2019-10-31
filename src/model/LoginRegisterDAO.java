package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginRegisterDAO {
	public static boolean Login(String userName, String passWord) throws Exception {

		Connection connection = null;
		Statement statement = null;
		boolean login = false;
		try {

			System.out.println(userName);

			connection = DBManager.getConnection();
			statement = connection.createStatement();
			String query = "select Project.UserInfo.Username, Project.UserInfo.EmailId  \n" + "from Project.UserInfo\n"
					+ "where Project.UserInfo.Username = '" + userName + "' and Project.UserInfo.Password = '"
					+ passWord + "' ;";
			ResultSet resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				if (resultSet.getString(1).equals(userName)) {
					login = true;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (connection != null)
				connection.close();
		}
		return login;

	}

	public static void Register(String userName, String eMail, String passWord) throws Exception {
		Connection connection = null;
		Statement statement = null;
		try {
			connection = DBManager.getConnection();
			statement = connection.createStatement();
			String query = "INSERT INTO `Project`.`UserInfo` (`Username`, `EmailId`, `Password`) VALUES ('" + userName
					+ "', '" + eMail + "', '" + passWord + "');\n" + "";
			statement.executeUpdate(query);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (connection != null)
				connection.close();
		}
	}

	public static String ChangePassword(String userName, String oldPassword, String newPassword) throws Exception {
		Connection connection = null;
		Statement statement = null;
		String change = null;
		try {
			connection = DBManager.getConnection();
			statement = connection.createStatement();
			String queryPassword = null;
			String query = "select username,Password from UserInfo\n" + "where Username = '" + userName
					+ "' and Password = '" + oldPassword + "';";
			ResultSet resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				queryPassword = resultSet.getString(2);
			}
			if (queryPassword != null) {
				if (queryPassword.equals(oldPassword)) {
					query = "update UserInfo\n" + "set Password = '" + newPassword + "'\n" + "where username = '"
							+ userName + "';";
					statement.executeUpdate(query);
					change = "<b>Password of User "+userName+" has been changed</b>";
				}
			} else
				change = "<b>Password of User "+userName+" does not match.<br> Must have entered wrong password.<br>Please enter correct password and try again.<br>"
						+ "<a href=\"changepassword.jsp\">Change Password</a></b>";

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (connection != null)
				connection.close();
		}
		return change;
	}

}
