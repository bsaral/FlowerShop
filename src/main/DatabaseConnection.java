package main;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class DatabaseConnection {
	Connection connection;
	PreparedStatement preparedStatement;

	private String dbName;
	private String dbUser;
	private String dbPass;
	private String url;

	public DatabaseConnection() {
		this.dbName = "flower";
		this.dbUser = "root";
		this.dbPass = "";
		this.url = "jdbc:mysql://localhost/" + dbName+ "?useUnicode=yes&characterEncoding=UTF-8" ;

	}

	public Connection setConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = (Connection) DriverManager.getConnection(url, dbUser, dbPass);
		} catch (ClassNotFoundException driverEx) {
			driverEx.printStackTrace();
			return null;
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
			return null;
		}

		return connection;
	}

	public void closeConnection() {
		try {
			if (connection != null)
				connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeConnection(Connection connection) {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}