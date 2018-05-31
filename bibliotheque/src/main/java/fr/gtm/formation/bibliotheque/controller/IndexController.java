package fr.gtm.formation.bibliotheque.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.gtm.formation.bibliotheque.domain.Livre;
import fr.gtm.formation.bibliotheque.repository.LivreRepository;
import fr.gtm.formation.bibliotheque.service.LivreService;

@Controller
public class IndexController {

	// proproete prive avec accesseur
	// injection
	@Autowired
	private Livre livre;

//	@Autowired
//	private LivreRepository livreRepository;

	@Autowired
	private LivreService livreService;

	// getteur et setteur

	public Livre getLivre() {
		return livre;
	}

	public void setLivre(Livre livre) {
		this.livre = livre;
	}

	// partis avec annotation
	// ModelAndView classe de type spring
	//
	/**
	 * definition du lien avec urls qui declenchent cette methode
	 * 
	 * @return ModelAndView la vue welcome
	 */
	@RequestMapping(path = "/welcome", method = RequestMethod.GET)
	ModelAndView displayIndex() {
		ModelAndView mav = new ModelAndView("welcome");
		final List<Livre> livres = new ArrayList<>();
		// on ajout � la liste les article
		//livres.add(this.livre);
		//livres.addAll(this.livreRepository.findAll());
		livres.addAll(this.livreService.affichageLivres());
		// on envoie � la partie model la liste d'article
		mav.getModel().put("livres", livres);

		return mav;

	}

	//
	@RequestMapping("/formulaire")
	ModelAndView displayForm() {
		ModelAndView mav = new ModelAndView("formulaire");
		// preparation de nouvel article � remplir

		return mav;

	}

	@RequestMapping(path = "/formulaire", method = RequestMethod.POST)
	ModelAndView validateFormulaire(@RequestParam String title, @RequestParam String author,
			@RequestParam String editor, @RequestParam String genre, @RequestParam String resume) {
		// Sauvegarde dans la bdd
		final Livre MonLivre = new Livre(title, author, editor, genre, resume);
		//this.livreRepository.save(MonLivre);
		this.livreService.validationFormul(MonLivre);
		// renvoyer vers la page displayIndex
		return this.displayIndex();

	}

	@GetMapping("/delete/{idLivre}")
	ModelAndView deleteLivre(@PathVariable(name = "idLivre") Integer id) {
		//this.livreRepository.deleteById(id);
		this.livreService.supprimerLivre(id);
		return this.displayIndex();
	}
	
	@GetMapping("/displayEdit/{idLivre}")
	ModelAndView displayEdit(@PathVariable(name = "idLivre") Integer id) {
		ModelAndView monModelAndViewedit = new ModelAndView("editformulaire");

		//Optional<Livre> MonLivrecup = this.livreRepository.findById(id);
		Optional<Livre> MonLivrecup = this.livreService.editionLivre(id);
		if (MonLivrecup.isPresent()) {
			monModelAndViewedit.addObject("editLivre", MonLivrecup);		
		}
		return monModelAndViewedit;
	}
	
	@PostMapping("/modify")
	ModelAndView validateEdit(@ModelAttribute Livre livre) {

		//this.livreRepository.save(livre);
		this.livreService.modificationLivre(livre);

		return this.displayIndex();
	}
	
	@GetMapping("/search")
	String displaySearch() {
		
		return "search";
	}
	
	@PostMapping("/search")
	ModelAndView validateSearch(@RequestParam String search) {
		final ModelAndView monModelAndView = new ModelAndView("search");
		
		//monModelAndView.addObject("resultList", this.livreRepository.findAllByTitleContaining(search));
		monModelAndView.addObject("resultList", this.livreService.validationRecherche(search));
		
		return monModelAndView;
	}
	

}
