package fr.humanbooster.fx.kanban.business;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

// Annotation
@Entity
// Pour avoir un nom différent de celui de la classe Java
//@Table(name="task")
public class Tache {

	private final static int NB_CARACTERES_MIN_INTITULE = 5;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) // Auto-increment
	private Long id;

	@Size(min=NB_CARACTERES_MIN_INTITULE, message="L''intitulé de la tâche doit comporter au minimum " + NB_CARACTERES_MIN_INTITULE + " caractères")
	private String intitule;

	@Temporal(TemporalType.DATE)
	private Date dateCreation;

	@Min(value = 1, message = "Le nombre d'heures doit être au moins de 1")
	@Max(value= 100, message = "Le nombre d'heures doit être au maximum de 100")
	private int nbHeuresEstimees;

	private int nbHeuresReelles;

	@ManyToMany
	private List<Developpeur> developpeurs;

	@ManyToOne
	private TypeTache typeTache;

	// La colonne dans laquelle la tâche se trouve
	@ManyToOne
	private Colonne colonne;
	
	@ManyToOne
	private Projet projet;
	
	// Surcharge de constructeurs (overload)
	public Tache() {
		setDateCreation(new Date());
	}
	
	public Tache(String intitule) {
		this();
		this.intitule = intitule;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIntitule() {
		return intitule;
	}

	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}

	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	
	public int getNbHeuresEstimees() {
		return nbHeuresEstimees;
	}

	public void setNbHeuresEstimees(int nbHeuresEstimees) {
		this.nbHeuresEstimees = nbHeuresEstimees;
	}

	public List<Developpeur> getDeveloppeurs() {
		return developpeurs;
	}

	public void setDeveloppeurs(List<Developpeur> developpeurs) {
		this.developpeurs = developpeurs;
	}

	public TypeTache getTypeTache() {
		return typeTache;
	}

	public void setTypeTache(TypeTache typeTache) {
		this.typeTache = typeTache;
	}

	public Projet getProjet() {
		return projet;
	}

	public void setProjet(Projet projet) {
		this.projet = projet;
	}

	public int getNbHeuresReelles() {
		return nbHeuresReelles;
	}

	public void setNbHeuresReelles(int nbHeuresReelles) {
		this.nbHeuresReelles = nbHeuresReelles;
	}

	public Colonne getColonne() {
		return colonne;
	}

	public void setColonne(Colonne colonne) {
		this.colonne = colonne;
	}

	@Override
	public String toString() {
		return "Tache [id=" + id + ", intitule=" + intitule + ", dateCreation=" + dateCreation + ", nbHeuresEstimees="
				+ nbHeuresEstimees + ", nbHeuresReelles=" + nbHeuresReelles + ", typeTache=" + typeTache + ", colonne="
				+ colonne + ", projet=" + projet + "]";
	}

}