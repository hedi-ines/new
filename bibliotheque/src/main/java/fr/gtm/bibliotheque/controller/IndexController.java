package fr.gtm.bibliotheque.controller;

import java.util.ArrayList;
import java.util.List;

//import javax.annotation.Generated;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.gtm.bibliotheque.domain.Livre;


@Controller
public class IndexController {

	// proproete prive avec accesseur
	// injection
	@Autowired
	private Livre livre;
	
	// getteur et setteur

	public Livre getLivre() {
		return livre;
	}
	public void setLivre(Livre livre) {
		this.livre = livre;
	}
	// 
	@RequestMapping("/form")
	ModelAndView displayForm() {
		ModelAndView mav = new ModelAndView("form");
		// preparation de nouvel article � remplir
		
		return mav;
		
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
		livres.add(this.livre);
		//on envoie � la partie model la liste d'article  
		mav.getModel().put("livres", livres);

		return mav;

	}
	
	
	

}
