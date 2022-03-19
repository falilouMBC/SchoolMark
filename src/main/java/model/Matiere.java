package model;

public class Matiere {
	
	public int id;
	public String intitule;
	public int id_prof;
	
	
	public Matiere(int id, String intitule, int id_prof) {
	
		this.id = id;
		this.intitule = intitule;
		this.id_prof = id_prof;
	}
		
	
	public Matiere(String intitule, int id_prof) {
	
		this.intitule = intitule;
		this.id_prof = id_prof;
	}

	
	public Matiere() {
	
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIntitule() {
		return intitule;
	}
	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}
	public int getId_prof() {
		return id_prof;
	}
	public void setId_prof(int id_prof) {
		this.id_prof = id_prof;
	}
	
	
}
