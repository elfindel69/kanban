package fr.humanbooster.fx.kanban.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.fx.kanban.business.Developpeur;

public interface DeveloppeurDao extends JpaRepository<Developpeur, Long> {
	
}
