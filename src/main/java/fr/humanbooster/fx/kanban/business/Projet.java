package fr.humanbooster.fx.kanban.business;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
public class Projet {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	// Un projet possède un nom (donnée obligatoire)
	@NotBlank
	@NotNull
	private String nom;
	
	@ManyToOne
	@JsonIgnore
	private Client client;
	
	// Un projet comporte plusieurs taches
	@OneToMany(mappedBy="projet")
	@JsonIgnore
	private List<Tache> taches;
	
	// Un projet a une date de création
	private Date dateCreation;
	
	// Un projet a une deadline
	private Date dateLivraison;
	
	@ManyToMany
	private List<Developpeur> developpeurs;
	
	public Projet() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public List<Tache> getTaches() {
		return taches;
	}

	public void setTaches(List<Tache> taches) {
		this.taches = taches;
	}

	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	public Date getDateLivraison() {
		return dateLivraison;
	}

	public void setDateLivraison(Date dateLivraison) {
		this.dateLivraison = dateLivraison;
	}

	public List<Developpeur> getDeveloppeurs() {
		return developpeurs;
	}

	public void setDeveloppeurs(List<Developpeur> developpeurs) {
		this.developpeurs = developpeurs;
	}

	@Override
	public String toString() {
		return "Projet [id=" + id + ", nom=" + nom + ", client=" + client + ", dateCreation=" + dateCreation
				+ ", dateLivraison=" + dateLivraison + "]";
	}
	
}
