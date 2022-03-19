package model;

public class Filiere {
	
	private int id_filiere;
	private String nom_filiere;
	
	public Filiere() {
		
	}
	
	public Filiere(String nom_filiere) {
		this.nom_filiere = nom_filiere;
	}

	public Filiere(int id_filiere, String nom_filiere) {
		this.id_filiere = id_filiere;
		this.nom_filiere = nom_filiere;
	}

	public int getId_filiere() {
		return id_filiere;
	}

	public void setId_filiere(int id_filiere) {
		this.id_filiere = id_filiere;
	}

	public String getNom_filiere() {
		return nom_filiere;
	}

	public void setNom_filiere(String nom_filiere) {
		this.nom_filiere = nom_filiere;
	}
	
	
}
