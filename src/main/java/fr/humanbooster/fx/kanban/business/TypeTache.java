package fr.humanbooster.fx.kanban.business;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

// Fonctionnalité (CDC), Bug, Amélioration, Spike (tache d'exploration)
@Entity
public class TypeTache {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(length=50)
	private String nom;
	private String couleur;
	
	@OneToMany(mappedBy="typeTache") // Toutes les tâches de ce type
	@JsonIgnore
	private List<Tache> taches;
	
	@Lob
	private String description;
	
	public TypeTache() {
		// TODO Auto-generated constructor stub
	}

	public TypeTache(String nom, String couleur) {
		super();
		this.nom = nom;
		this.couleur = couleur;
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

	public String getCouleur() {
		return couleur;
	}

	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}

	public List<Tache> getTaches() {
		return taches;
	}

	public void setTaches(List<Tache> taches) {
		this.taches = taches;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "TypeTache [id=" + id + ", nom=" + nom + ", couleur=" + couleur + ", description=" + description + "]";
	}
	
}