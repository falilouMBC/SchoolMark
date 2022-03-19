package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connexion.Connexion;

public class NoteDAO {
	
	
	public Note read (int id) throws Exception {
		
		try (Connection connection = Connexion.getConnection()) {
			
			String query = "Select * From note where id=?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				
				return new Note(rs.getInt("id"),rs.getString("login_etu"),
						rs.getString("matiere"),rs.getDouble("note"));
				
			}
		} catch (Exception e) {
			
			throw new Exception(e.getClass() + ":" + e.getMessage());
			
		}
			
		return null;
		
	}
}
