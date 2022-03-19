package model;

public class Classe {
	
	private int id_classe;
	private String classe;
	private int id_filiere;
	
	public Classe(String classe, int id_filiere) {
	
		this.classe = classe;
		this.id_filiere = id_filiere;
	}

	public Classe(int id_classe, String classe, int id_filiere) {
	
		this.id_classe = id_classe;
		this.classe = classe;
		this.id_filiere = id_filiere;
	}

	public Classe() {
		
	}

	public int getId_classe() {
		return id_classe;
	}

	public void setId_classe(int id_classe) {
		this.id_classe = id_classe;
	}

	public String getClasse() {
		return classe;
	}

	public void setClasse(String classe) {
		this.classe = classe;
	}

	public int getId_filiere() {
		return id_filiere;
	}

	public void setId_filiere(int id_filiere) {
		this.id_filiere = id_filiere;
	}
	
	
}
