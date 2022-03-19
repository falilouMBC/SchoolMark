package Metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import connexion.Connexion;
import model.Classe;
import model.Enseignant;
import model.Filiere;
import model.Matiere;
import model.Note;





public class Metier {

	public static boolean checkConnexion(String login , String pwd) {

		try{

			Connection conn = Connexion.getConnection();
			String query = "Select * From utilisateur where login=? and password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, login);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {

				return true ;

			}

			return false;

		}catch (Exception e){

			e.printStackTrace();

		}

		return false;

	}

	public static String createFiliere(Filiere filiere)
	{
		String resultat = "Filiere créé avec succees";
		
		try(Connection conn = Connexion.getConnection()){
			String query = "insert into filiere (nomFiliere) values(?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, filiere.getNom_filiere());

			ps.execute();

		} catch (SQLException e) {

			e.printStackTrace();
			resultat= "Problem d'insertion";
		}

		return resultat;

	}
	
	public static String createClasse(Classe classe)
	{
		String resultat = "Classe créé avec succees";
		
		try(Connection conn = Connexion.getConnection()){
			String query = "insert into classe (nomclasse,id_filiere) values(?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, classe.getClasse());
			ps.setInt(2, classe.getId_filiere());
			
			ps.execute();

		} catch (SQLException e) {

			e.printStackTrace();
			resultat= "Problem d'insertion";
		}

		return resultat;

	}
	
	public static String createMatiere(Matiere matiere)
	{
		String resultat = "Classe créé avec succees";
		
		try(Connection conn = Connexion.getConnection()){
			String query = "insert into matiere (intitule,id_prof) values(?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, matiere.getIntitule());
			ps.setInt(2, matiere.getId_prof());
			
			ps.execute();

		} catch (SQLException e) {

			e.printStackTrace();
			resultat= "Problem d'insertion";
		}

		return resultat;

	}
	
	public static String noter(Note note)
	{
		String resultat = "Cet etudiant est noté";
		
		try(Connection conn = Connexion.getConnection()){
			String query = "insert into note (login_etu,matiere,note) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, note.getLogin_etu());
			ps.setString(2, note.getMatiere());
			ps.setDouble(3, note.getNote());
			ps.execute();

		} catch (SQLException e) {

			e.printStackTrace();
			resultat= "Problem d'insertion";
		}

		return resultat;

	}
	
	public static String createTeacher(Enseignant enseignant)
	{
		String resultat = "enseignant créé avec succees";
		
		try(Connection conn = Connexion.getConnection()){
			String query = "insert into professeur (login,password,nomComplet) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, enseignant.getLogin());
			ps.setString(2, enseignant.getPassword());
			ps.setString(3, enseignant.getNomComplet());
			ps.execute();

		} catch (SQLException e) {

			e.printStackTrace();
			resultat= "Problem d'insertion";
		}

		return resultat;

	}
	
	public static List<Filiere> listFiliere() {
		List<Filiere> list=new ArrayList<Filiere>();
		try (Connection conn = Connexion.getConnection()){
			String requete = "SELECT * from filiere";
			PreparedStatement ps = conn.prepareStatement(requete);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Filiere f = new Filiere();
				f.setId_filiere(rs.getInt("id_filiere"));
				f.setNom_filiere(rs.getString("nomFiliere"));

				list.add(f);
		}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list ;
		
	}
	
	public static List<Matiere> listMatiere() {
		List<Matiere> list=new ArrayList<Matiere>();
		try (Connection conn = Connexion.getConnection()){
			String requete = "SELECT * from matiere";
			PreparedStatement ps = conn.prepareStatement(requete);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Matiere m = new Matiere();
				m.setId(rs.getInt("id_matiere"));
				m.setIntitule(rs.getString("intitule"));
				m.setId_prof(rs.getInt("id_prof"));
				list.add(m);
		}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list ;
		
	}
	
	public static List<Classe> listClasse() {
		List<Classe> list=new ArrayList<Classe>();
		try (Connection conn = Connexion.getConnection()){
			String requete = "SELECT * from classe";
			PreparedStatement ps = conn.prepareStatement(requete);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Classe c = new Classe();
				c.setId_classe(rs.getInt("id_classe"));
				c.setClasse(rs.getString("nomClasse"));
				c.setId_filiere(rs.getInt("id_filiere"));
				list.add(c);
		}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list ;
		
	}
	
	public static List<Note> listNote() {
		List<Note> list=new ArrayList<Note>();
		try (Connection conn = Connexion.getConnection()){
			String requete = "SELECT * from note";
			PreparedStatement ps = conn.prepareStatement(requete);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Note n = new Note();
				n.setId(rs.getInt("id"));
				n.setLogin_etu(rs.getString("login_etu"));
				n.setMatiere(rs.getString("matiere"));
				n.setNote(rs.getDouble("note"));
				list.add(n);
		}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list ;
		
	}
	
	public static int updateNote(Note n){
		
		int status=0;
		
		try(Connection con= Connexion.getConnection()){
			
			PreparedStatement ps=con.prepareStatement("UPDATE note SET login_etu=?, matiere=?, note=? WHERE login=?");
			
			ps.setString(1, n.getLogin_etu());
			ps.setString(2, n.getMatiere());
			ps.setDouble(3, n.getNote());

			
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	
}
