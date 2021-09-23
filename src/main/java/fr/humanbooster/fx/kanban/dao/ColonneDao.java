package fr.humanbooster.fx.kanban.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.fx.kanban.business.Colonne;
import org.springframework.data.jpa.repository.Query;

public interface ColonneDao extends JpaRepository<Colonne, Long> {

    Colonne findByNom(String nom);

}
