package fr.humanbooster.fx.kanban.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import fr.humanbooster.fx.kanban.business.Developpeur;
import fr.humanbooster.fx.kanban.dao.DeveloppeurDao;
import fr.humanbooster.fx.kanban.service.DeveloppeurService;

@Service
public class DeveloppeurServiceImpl implements DeveloppeurService {

	private final DeveloppeurDao developpeurDao;
	
	public DeveloppeurServiceImpl(DeveloppeurDao developpeurDao) {
		super();
		this.developpeurDao = developpeurDao;
	}

	@Override
	public Developpeur ajouterDeveloppeur(String nom, String prenom) {
		Developpeur developpeur = new Developpeur();
		developpeur.setNom(nom);
		developpeur.setPrenom(prenom);
		developpeurDao.save(developpeur);
		return developpeur;
	}

	@Override
	public Developpeur ajouterDeveloppeur(String prenom) {
		Developpeur developpeur = new Developpeur();
		developpeur.setPrenom(prenom);
		developpeurDao.save(developpeur);
		return developpeur;
	}

	@Override
	public List<Developpeur> recupererDeveloppeurs() {
		return developpeurDao.findAll();
	}

	@Override
	public Developpeur recupererDeveloppeur(Long idDev) {
		return developpeurDao.findById(idDev).orElse(null);
	}

}