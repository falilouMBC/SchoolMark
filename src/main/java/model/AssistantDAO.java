package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connexion.Connexion;

public class AssistantDAO {

	public static boolean authentification(String login , String pwd) {
		try(Connection conn = Connexion.getConnection()) {
			String query = "Select * From assistant where login=? and password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, login);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return true ;
			}
			return false ;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
}
