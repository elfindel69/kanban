package fr.humanbooster.fx.kanban.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import fr.humanbooster.fx.kanban.business.TypeTache;
import fr.humanbooster.fx.kanban.dao.TypeTacheDao;
import fr.humanbooster.fx.kanban.service.TypeTacheService;

@Service
public class TypeTacheServiceImpl implements TypeTacheService {

	TypeTacheDao typeTacheDao;
	
	public TypeTacheServiceImpl(TypeTacheDao typeTacheDao) {
		super();
		this.typeTacheDao = typeTacheDao;
	}

	@Override
	public List<TypeTache> recupererTypesTache() {
		return typeTacheDao.findAll();
	}

	@Override
	public TypeTache recupererTypeTache(String type) {
		return typeTacheDao.findByNom(type);
	}

	@Override
	public TypeTache ajouterTypeTache(String nom, String couleur) {
		return typeTacheDao.save(new TypeTache(nom, couleur));
	}

}
