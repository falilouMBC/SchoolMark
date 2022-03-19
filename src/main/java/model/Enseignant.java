package model;

public class Enseignant {
	
	private int id_prof;
	private String login;
	private String password;
	private String nomComplet;
	
	
	
	public Enseignant() {
	
	}

	public Enseignant(String login, String password, String nomComplet) {
	
		this.login = login;
		this.password = password;
		this.nomComplet = nomComplet;
	}

	public Enseignant(int id_prof, String login, String password, String nomComplet) {
		super();
		this.id_prof = id_prof;
		this.login = login;
		this.password = password;
		this.nomComplet = nomComplet;
	}

	public int getId_prof() {
		return id_prof;
	}

	public void setId_prof(int id_prof) {
		this.id_prof = id_prof;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNomComplet() {
		return nomComplet;
	}

	public void setNomComplet(String nomComplet) {
		this.nomComplet = nomComplet;
	}
	

	
}
