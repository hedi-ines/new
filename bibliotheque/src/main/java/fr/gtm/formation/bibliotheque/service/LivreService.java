package fr.gtm.formation.bibliotheque.service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import fr.gtm.formation.bibliotheque.domain.Livre;
import fr.gtm.formation.bibliotheque.repository.LivreRepository;

@Component
public class LivreService implements ILivreService {

	@Autowired
	private LivreRepository livreRepository;

	@Autowired
	private Livre livre;


	public List<Livre> affichageLivres() {
		return this.livreRepository.findAll();

	}

	public void validationFormul(Livre livre) {
		this.livreRepository.save(livre);

	}

	public void supprimerLivre(Integer id) {
		this.livreRepository.deleteById(id);
	}


	public Optional<Livre> editionLivre(Integer id) {

		return this.livreRepository.findById(id);
	}
	
	public void modificationLivre(Livre livre) {
		this.livreRepository.save(livre);

	}
	
	public List<Livre> validationRecherche(String search) {
		return this.livreRepository.findAllByTitleContaining(search);
		
	}
}
