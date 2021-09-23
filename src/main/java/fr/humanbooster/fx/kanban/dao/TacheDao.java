package fr.humanbooster.fx.kanban.dao;

import fr.humanbooster.fx.kanban.business.Colonne;
import fr.humanbooster.fx.kanban.business.Developpeur;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.fx.kanban.business.Tache;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface TacheDao extends JpaRepository<Tache, Long> {


    Page<Tache> findAllByColonne(Colonne colonne, Pageable pageable);

    @Query("SELECT t FROM Tache t WHERE :developpeur MEMBER OF t.developpeurs AND t.colonne.nom = 'A faire'")
    List<Tache> findAllTachesAFaire(@Param("developpeur") Developpeur developpeur);

    List<Tache> findAllByIntituleContains(String intitule);

    @Query("SELECT sum(t.nbHeuresEstimees) FROM Tache t WHERE t.dateCreation BETWEEN :dateDebut AND :dateFin")
    int findTotalHeuresPrevues(@Param("dateDebut") Date dateDebut, @Param("dateFin") Date dateFin);
}