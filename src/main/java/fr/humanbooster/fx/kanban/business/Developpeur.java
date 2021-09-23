package fr.humanbooster.fx.kanban.business;

import java.util.Date;
import java.util.List;

// JPA: Java Persistence API
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Past;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.CreditCardNumber;

// On demande à Java de créer une table Developpeur
@Entity
public class Developpeur {

	// Attributs
	
	@Id // indique la clé primaire pour la table Developpeur
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String prenom;
	
	private String nom;
	
	@Past(message="La date de naissance doit être dans le passé")
	@Temporal(TemporalType.DATE)
	private Date dateNaissance;
	
	@ManyToMany(mappedBy="developpeurs")
	@JsonIgnore
	private List<Tache> taches;
	
	@Email(message="L''email du développeur doit être au bon format")
	private String email;
	
	@Transient
	private int nbTachesEnCours;
	
	@CreditCardNumber
	private String numeroCarteBleue;
	
	@ManyToMany(mappedBy="developpeurs")
	private List<Projet> projets;
	
	// Constructeurs
	public Developpeur() {
		// TODO Auto-generated constructor stub
	}

	public Developpeur(String prenom, String nom) {
		super();
		this.prenom = prenom;
		this.nom = nom;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public List<Tache> getTaches() {
		return taches;
	}

	public void setTaches(List<Tache> taches) {
		this.taches = taches;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getNbTachesEnCours() {
		return nbTachesEnCours;
	}

	public void setNbTachesEnCours(int nbTachesEnCours) {
		this.nbTachesEnCours = nbTachesEnCours;
	}

	public String getNumeroCarteBleue() {
		return numeroCarteBleue;
	}

	public void setNumeroCarteBleue(String numeroCarteBleue) {
		this.numeroCarteBleue = numeroCarteBleue;
	}

	public List<Projet> getProjets() {
		return projets;
	}

	public void setProjets(List<Projet> projets) {
		this.projets = projets;
	}

	@Override
	public String toString() {
		return "Developpeur [id=" + id + ", prenom=" + prenom + ", nom=" + nom + "]";
	}
	
	
}
