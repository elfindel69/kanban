package fr.humanbooster.fx.kanban.controller;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.humanbooster.fx.kanban.service.ColonneService;
import fr.humanbooster.fx.kanban.service.DeveloppeurService;
import fr.humanbooster.fx.kanban.service.TacheService;
import fr.humanbooster.fx.kanban.service.TypeTacheService;

@Controller
public class KanbanController {

	private final TacheService tacheService;
	private final DeveloppeurService developpeurService;
	private final ColonneService colonneService;
	private final TypeTacheService typeTacheService;
	
	private Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());
		
	public KanbanController(TacheService tacheService, DeveloppeurService developpeurService,
			ColonneService colonneService, TypeTacheService typeTacheService) {
		super();
		this.tacheService = tacheService;
		this.developpeurService = developpeurService;
		this.colonneService = colonneService;
		this.typeTacheService = typeTacheService;
	}

	@RequestMapping(value = { "/index", "/" })
	public ModelAndView accueil() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("taches", tacheService.recupererTaches());
		mav.addObject("developpeurs", developpeurService.recupererDeveloppeurs());
		return mav;
	}
		
	@PostConstruct
	public void init() {
		logger.info("Invocation de la méthode init()");
		
		if (colonneService.recupererColonnes().isEmpty()) {
			colonneService.ajouterColonne("A faire");
			colonneService.ajouterColonne("En cours");
			colonneService.ajouterColonne("A tester");
			colonneService.ajouterColonne("Terminé");
		}
		
		if (typeTacheService.recupererTypesTache().isEmpty()) {
			typeTacheService.ajouterTypeTache("Bug", "ffac2d");
			typeTacheService.ajouterTypeTache("Fonctionnalité", "009ad7");
			typeTacheService.ajouterTypeTache("Amélioration", "68af27");
			typeTacheService.ajouterTypeTache("Spike", "67319a");
		}
		
		if (developpeurService.recupererDeveloppeurs().isEmpty()) {
			developpeurService.ajouterDeveloppeur("Dounia");
			developpeurService.ajouterDeveloppeur("Mickael");
			developpeurService.ajouterDeveloppeur("Jonathan");
			developpeurService.ajouterDeveloppeur("Sohrab");
			developpeurService.ajouterDeveloppeur("Thomas");
			developpeurService.ajouterDeveloppeur("Samuel");
			developpeurService.ajouterDeveloppeur("Leonard");
			developpeurService.ajouterDeveloppeur("Vincent");
			developpeurService.ajouterDeveloppeur("Evan");
			developpeurService.ajouterDeveloppeur("Nicolas");
			developpeurService.ajouterDeveloppeur("Philippe");
			developpeurService.ajouterDeveloppeur("Valentin");
			developpeurService.ajouterDeveloppeur("Teva");
			developpeurService.ajouterDeveloppeur("Adel");
			developpeurService.ajouterDeveloppeur("Stephane");
		}

		if (tacheService.recupererTaches().isEmpty()) {
			tacheService.ajouterTache("Tache 1");
			tacheService.ajouterTache("Tache 2");
		}
	}
}