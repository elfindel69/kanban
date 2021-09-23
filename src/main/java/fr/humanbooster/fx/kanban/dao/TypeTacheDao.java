package fr.humanbooster.fx.kanban.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.fx.kanban.business.TypeTache;

public interface TypeTacheDao extends JpaRepository<TypeTache, Long> {

    TypeTache findByNom(String type);
}