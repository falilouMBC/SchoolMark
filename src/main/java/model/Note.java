package model;

public class Note {
	
	private int id;
	private String login_etu;
	private String matiere;
	private double note;
	
	public Note(String login_etu, String matiere, double note) {

		this.login_etu = login_etu;
		this.matiere = matiere;
		this.note = note;
		
	}
	public Note() {
		
	}

	
	public Note(int id, String login_etu, String matiere, double note) {
		
		this.id = id;
		this.login_etu = login_etu;
		this.matiere = matiere;
		this.note = note;
	}
	
	public String getLogin_etu() {
		return login_etu;
	}

	public void setLogin_etu(String login_etu) {
		this.login_etu = login_etu;
	}

	public String getMatiere() {
		return matiere;
	}

	public void setMatiere(String matiere) {
		this.matiere = matiere;
	}

	public double getNote() {
		return note;
	}

	public void setNote(double note) {
		this.note = note;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
