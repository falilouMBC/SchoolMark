package model;

public class Utilisateur {
	
	private int id_user;
	private String login;
	private String password;
	private String profil;
	private int id_ens;
	private int id_etu;
	
	public Utilisateur() {
	
	}

	public Utilisateur(int id_user, int id_ens, int id_etu) {
	
		this.id_user = id_user;
		this.id_ens = id_ens;
		this.id_etu = id_etu;
	}

	
	
	public Utilisateur(String login, String password, String profil, int id_ens, int id_etu) {
		
		this.login = login;
		this.password = password;
		this.profil = profil;
		this.id_ens = id_ens;
		this.id_etu = id_etu;
	
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public int getId_ens() {
		return id_ens;
	}

	public void setId_ens(int id_ens) {
		this.id_ens = id_ens;
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

	public String getProfil() {
		return profil;
	}

	public void setProfil(String profil) {
		this.profil = profil;
	}
	
	
	
}
