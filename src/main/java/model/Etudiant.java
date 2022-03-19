package model;

public class Etudiant {
	
	private int id_etu;
	private String login;
	private String password;
	private String nomComplet;
	private int id_classe;
	
	public Etudiant() {
		
	}

	public Etudiant(String login, String password, String nomComplet, int id_classe) {
		
		this.login = login;
		this.password = password;
		this.nomComplet = nomComplet;
		this.id_classe = id_classe;
		
	}

	public Etudiant(int id_etu, String login, String password, String nomComplet, int id_classe, int id_filiere)
	{
		this.id_etu = id_etu;
		this.login = login;
		this.password = password;
		this.nomComplet = nomComplet;
		this.id_classe = id_classe;

	}

	public int getId_etu() {
		return id_etu;
	}

	public void setId_etu(int id_etu) {
		this.id_etu = id_etu;
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

	public int getId_classe() {
		return id_classe;
	}

	public void setId_classe(int id_classe) {
		this.id_classe = id_classe;
	}


	
	
}
