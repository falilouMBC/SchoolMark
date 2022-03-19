package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connexion.Connexion;


public class EtudiantDAO {

	public static boolean authentification(String login , String pwd) {
		try(Connection conn = Connexion.getConnection()) {
			String query = "Select * From etudiant where login=? and password=?";
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

	public static String createStudent(Etudiant etudiant)
	{
		String resultat = "etudiant créé avec succees";

		try(Connection conn = Connexion.getConnection()){
			String query = "insert into etudiant (login,password,nomComplet,id_classe) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, etudiant.getLogin());
			ps.setString(2, etudiant.getPassword());
			ps.setString(3, etudiant.getNomComplet());
			ps.setInt(4, etudiant.getId_classe());
			ps.execute();

		} catch (SQLException e) {

			e.printStackTrace();
			resultat= "Problem d'insertion";
		}

		return resultat;

	}

	public static List<Etudiant> listEtudiant() {
		List<Etudiant> list=new ArrayList<Etudiant>();
		try (Connection conn = Connexion.getConnection()){
			String requete = "SELECT * from etudiant";
			PreparedStatement ps = conn.prepareStatement(requete);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Etudiant e = new Etudiant();
				e.setId_etu(rs.getInt("id_etu"));
				e.setLogin(rs.getString("login"));
				e.setNomComplet(rs.getString("nomComplet"));
				e.setId_classe(rs.getInt("id_classe"));
				list.add(e);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list ;

	}

	/*public static List<Etudiant> listNote() {
		List<Note> list=new ArrayList<Note>();
		try (Connection conn = Connexion.getConnection()){
			String requete = "SELECT (nomComplet,intitulé) from note natural join etudiant, matiere";
			PreparedStatement ps = conn.prepareStatement(requete);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Etudiant e = new Etudiant();
				e.setId_etu(rs.getInt("id_etu"));
				e.setLogin(rs.getString("login"));
				e.setNomComplet(rs.getString("nomComplet"));
				e.setId_classe(rs.getInt("id_classe"));
				list.add(e);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list ;

	}*/ 	
}
