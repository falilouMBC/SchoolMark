package connexion;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {
	
	private static String url="jdbc:mysql://localhost:3306/gestion_note";
	private static String user= "root";
	private static String pwd="";
	private static String driver = "com.mysql.cj.jdbc.Driver";
	

	public static String getUrl() {
		return url;
	}

	public static void setUrl(String url) {
		Connexion.url = url;
	}

	public static String getUser() {
		return user;
	}

	public static void setUser(String user) {
		Connexion.user = user;
	}

	public static String getPwd() {
		return pwd;
	}

	public static void setPwd(String pwd) {
		Connexion.pwd = pwd;
	}

	public static String getDriver() {
		return driver;
	}

	public static void setDriver(String driver) {
		Connexion.driver = driver;
	}

	public static void loadDriver() {
		
		try {
			
			Class.forName(driver);
			
		}catch(ClassNotFoundException e) {
			
			e.printStackTrace();
			
		}
	}
	
	public static Connection getConnection() {
		
		loadDriver();
		
		Connection conn = null;
		
		try {
			
			conn = DriverManager.getConnection(url, user, pwd);
		
		}catch(SQLException e) {
			
			e.printStackTrace();
		
		}
		
		return conn;
	}
}
