package fr.humanbooster.fx.kanban.controller;

import fr.humanbooster.fx.kanban.business.Colonne;
import fr.humanbooster.fx.kanban.business.Developpeur;
import fr.humanbooster.fx.kanban.business.Tache;
import fr.humanbooster.fx.kanban.service.ColonneService;
import fr.humanbooster.fx.kanban.service.DeveloppeurService;
import fr.humanbooster.fx.kanban.service.TacheService;
import fr.humanbooster.fx.kanban.service.TypeTacheService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;
import java.util.Random;

@RestController
@RequestMapping("api/")
public class KanbanRestController {
    private Random random;
    private final TacheService tacheService;
    private final TypeTacheService typeTacheService;
    private final ColonneService colonneService;
    private final DeveloppeurService developpeurService;

    public KanbanRestController(TacheService tacheService, TypeTacheService typeTacheService,
                                ColonneService colonneService, DeveloppeurService developpeurService) {
        this.tacheService = tacheService;
        this.typeTacheService = typeTacheService;
        this.colonneService = colonneService;
        this.developpeurService = developpeurService;
        this.random = new Random();
    }

    /**
     * méthode (A)
     *  une méthode qui ajoute une tâche en précisant son intitulé et le type de tâche. La
     * méthode choisira au hasard un développeur et un nombre d’heures prévues entre 1
     * et 144. La tâche sera ajoutée sur la colonne 1 : « A faire ».
     * Exemple : http://localhost:8080/taches/Corriger%20CSS/Bug
     * @param nom nom de la Tache
     * @param type type de la Tache
     * @return Tache ajoutée
     */
    @PostMapping("taches/{nom}/{type}")
    public Tache ajouterTache(@PathVariable String nom, @PathVariable String type){

        Tache tache = new Tache();
        tache.setIntitule(nom);
        tache.setTypeTache(typeTacheService.recupererTypeTache(type));
        tache.setColonne(colonneService.recupererColonne("A faire"));
        Long idDev = (long)random.nextInt(144 - 1) + 1;
        Developpeur dev = developpeurService.recupererDeveloppeur(idDev);
        if(dev!=null){
            tache.getDeveloppeurs().add(dev);
        }
        int nbHeures = random.nextInt(100 - 1) + 1;
        tache.setNbHeuresEstimees(nbHeures);
        return tacheService.ajouterTache(tache);
    }

    /**
     * méthode (B)
     *une méthode permettant d’obtenir toutes les informations sur une tâche
     * Exemple : http://localhost:8080/api/taches/2
     * @param id id de la Tache
     * @return Tache récupérée
     */
    @GetMapping("taches/{id}")
    Tache getTache(@PathVariable Long id){
        return tacheService.recupererTache(id);
    }

    /**
     * methode (C)
     * une méthode qui permet de mettre à jour l’intitulé d’une tâche dont l’id est
     * précisé dans l’URL
     * Exemple : http://localhost:8080/api/taches/2/Corriger%20JSP%20index
     * @param id id de la Tache
     * @param description description de la Tache
     * @return Tache éditée
     */
    @PutMapping("taches/{id}/{description}")
    Tache editerTache(@PathVariable Long id, @PathVariable String description){
        Tache tache = tacheService.recupererTache(id);
        return tacheService.editerTache(tache, description);
    }

    /**
     * methode (D)
     * une méthode permettant de supprimer une tâche en précisant son id
     * Exemple : http://localhost:8080/api/taches/2
     * @param id id de la Tache à supprimer
     * @return Tache supprimée
     */
    @DeleteMapping("taches/{id}")
    boolean supprimerTache(@PathVariable Long id){
        return tacheService.supprimerTache(id);
    }

    /**
     * methode (E)
     *  une méthode permettant d’obtenir une page de toutes les tâches placées dans une
     * colonne
     * Exemple : http://localhost:8080/api/colonnes/2/taches?page=1&size=5
     * @param id id de la Colonne
     * @param pageable pages à afficher
     * @return Page de Tache à afficher
     */
    @GetMapping("colonnes/{id}/taches")
    Page<Tache> recupererTachesParColonne(@PathVariable Long id,
                                          @PageableDefault(size=10,page=0,sort="dateCreation",direction = Sort.Direction.DESC) Pageable pageable){
        System.out.println(id);
        Colonne colonne = colonneService.recupererColonne(id);
        return tacheService.recupererTaches(colonne,pageable);
    }

    /**
     * methode (F)
     * une méthode permettant d’obtenir les tâches ayant le statut « à faire » et confiées
     * à un développeur en particulier
     * Exemple : http://localhost:8080/api/developpeurs/2/tachesAFaire
     * @param id id du Developpeur
     * @return Tache trouvées
     */
    @GetMapping("developpeurs/{id}/tachesAfaire")
    List<Tache> recupererTachesAFaire(@PathVariable Long id){
        Developpeur developpeur = developpeurService.recupererDeveloppeur(id);
        System.out.println(developpeur);
        return tacheService.recupererTachesAFaire(developpeur);
    }

    /**
     * methode (G)
     * une méthode permettant d’obtenir toutes les tâches dont l’intitulé contient le mot
     * précisé dans l’URL
     * Exemple : http://localhost:8080/api/taches?intitule=Timer
     * @param intitule filtre à appliquer
     * @return Taches trouvées
     */
    @GetMapping("taches")
    List<Tache> recupererTaches(@RequestParam String intitule){
        return tacheService.recupererTaches(intitule);
    }

    /**
     * méthode (H)
     * une méthode permettant de déterminer le total des heures prévues pour les
     * tâchées créées entre deux dates données en paramètre
     * Exemple : http://localhost:8080/api/totalHeuresPrevues?dateDebut=2021-09-01&dateFin=2021-09-30
     * @param dateDebut date de début
     * @param dateFin date de fin
     * @return total des heures prévues
     */
    @GetMapping("totalHeuresPrevues")
    int recupererTotalHeuresPrevues( @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam(name = "dateDebut", required = false) Date dateDebut,
                                     @DateTimeFormat(pattern = "yyyy-MM-dd") @RequestParam(name = "dateFin", required = false) Date dateFin ){
        return tacheService.recupererTotalHeuresPrevues(dateDebut,dateFin);
    }

    /**
     * méthode (I)
     * une méthode permettant de supprimer toutes les tâches d’une colonne
     * Exemple: http://localhost:8080/api/colonnes/1/taches
     * @param id id de la Colonne
     * @return Colonnes supprimées?
     */
    @DeleteMapping("colonnes/{id}/taches")
    public boolean supprimerTaches(@PathVariable Long id){
        Colonne colonne = colonneService.recupererColonne(id);
        return colonneService.supprimerTaches(colonne);
    }

    /**
     * méthode (J)
     * une méthode permettant de gérer le déplacement d’une tâche effectué sur le
     * tableau Kanban de la page Web de l’application
     * Exemple: http://localhost:8080/api/taches/1/colonnes/1
     * @param idTache id de la Tache à déplacer
     * @param idColonne id de la Colonne de destination
     * @return Tache déplacée
     */
    @PutMapping("taches/{idTache}/colonnes/{idColonne}")
    public Tache deplacerTache(@PathVariable Long idTache,@PathVariable Long idColonne){
        Tache tache = tacheService.recupererTache(idTache);
        Colonne colonne = colonneService.recupererColonne(idColonne);
        return tacheService.deplacerTache(tache,colonne);
    }
}
