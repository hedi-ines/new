package fr.gtm.formation.bibliotheque.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.gtm.formation.bibliotheque.domain.Livre;

public interface LivreRepository extends JpaRepository<Livre, Integer> {
	
	List<Livre> findAllByTitleContaining(String search);
	List<Livre> findAllByAuthorContaining(String search1);
	List<Livre> findAllByResumeContaining(String search2);

}
