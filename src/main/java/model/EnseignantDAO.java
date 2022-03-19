package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connexion.Connexion;

public class EnseignantDAO {
	
	public static boolean authentification(String login , String pwd) {
		try(Connection conn = Connexion.getConnection()) {
			String query = "Select * From professeur where login=? and password=?";
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
	
	public static List<Enseignant> listEnseignant() {
		List<Enseignant> list=new ArrayList<Enseignant>();
		try (Connection conn = Connexion.getConnection()){
			String requete = "SELECT * from professeur";
			PreparedStatement ps = conn.prepareStatement(requete);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Enseignant e = new Enseignant();
				e.setId_prof(rs.getInt("id_prof"));
				e.setLogin(rs.getString("login"));
				e.setNomComplet(rs.getString("nomComplet"));

				list.add(e);
		}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list ;
		
	}
}
