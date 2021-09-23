package fr.humanbooster.fx.kanban.service;

import java.util.List;

import fr.humanbooster.fx.kanban.business.Colonne;


public interface ColonneService {

	/**
	 * Cette méthode permet d'ajouter une colonne
	 * @param nom de la colonne
	 * @return l'objet de type Colonne créé 
	 */
	Colonne ajouterColonne(String nom);

	List<Colonne> recupererColonnes();

    Colonne recupererColonne(String nom);

    Colonne recupererColonne(Long id);

    boolean supprimerTaches(Colonne colonne);
}
