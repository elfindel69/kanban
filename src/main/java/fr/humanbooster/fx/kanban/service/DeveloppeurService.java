package fr.humanbooster.fx.kanban.service;

import java.util.List;

import fr.humanbooster.fx.kanban.business.Developpeur;

public interface DeveloppeurService {

	Developpeur ajouterDeveloppeur(String nom, String prenom);

	Developpeur ajouterDeveloppeur(String string);

	List<Developpeur> recupererDeveloppeurs();

	Developpeur recupererDeveloppeur(Long idDev);
}
