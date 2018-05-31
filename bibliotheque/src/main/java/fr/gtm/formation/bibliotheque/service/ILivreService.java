package fr.gtm.formation.bibliotheque.service;

import java.util.List;
import java.util.Optional;

import fr.gtm.formation.bibliotheque.domain.Livre;


public interface ILivreService {
	
	public List<Livre> affichageLivres();
	
	public void validationFormul(Livre livre);

	public void supprimerLivre(Integer id);
	
	public Optional<Livre> editionLivre(Integer id);
	
	public void modificationLivre(Livre livre);
	
	public List<Livre> validationRecherche(String search);
	
}
