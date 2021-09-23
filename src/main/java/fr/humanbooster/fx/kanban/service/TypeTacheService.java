package fr.humanbooster.fx.kanban.service;

import java.util.List;

import fr.humanbooster.fx.kanban.business.TypeTache;

public interface TypeTacheService {

	TypeTache ajouterTypeTache(String string, String string2);

	List<TypeTache> recupererTypesTache();

    TypeTache recupererTypeTache(String type);
}
