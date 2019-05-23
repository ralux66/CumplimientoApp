package com.avanceti.compliance.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.model.Notaut;
import com.avanceti.compliance.services.INotariosService;
import com.avanceti.compliance.utility.JaroWinklerDistance;

@Controller
@RequestMapping("/notario-auto")
public class NotarioAutoController {
	
	private ActiveMenu menuActive = new ActiveMenu();
	@Autowired
	private INotariosService notarioService;
	
	@GetMapping(value = "/search")
	public String homeSearch() {
		menuActive.setSearch("k-menu__item--open k-menu__item--here");			
		return "notario/search-auto";
	}
	
	@GetMapping(value = "/listanotario-auto")
	public String listBlacklist(Model model) {
		model.addAttribute("allnotario", notarioService.allNotarios());	
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		return "notario/listnotario-auto";
	}
	
	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch,
			RedirectAttributes attributes) {
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		List<Notaut> resultQuery = new LinkedList<Notaut>();
		List<Notaut> resultSearchBlacklist = new LinkedList<Notaut>();
		Double score;		
		try {
			resultQuery = notarioService.findByName("%" + nameToSearch + "%").stream().filter(b->b.getTitulo().equals("NOTARIO")).collect(Collectors.toList());
			for (Notaut notaut : resultQuery) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), notaut.getNombres());
				if (score > 0.70) {
					notaut.setScore(score);
					resultSearchBlacklist.add(notaut);
				} 
			}
			model.addAttribute("allResultreturn", resultSearchBlacklist);			
			attributes.addFlashAttribute("message", "Sucess");
		} catch (Exception e) {
			attributes.addFlashAttribute("message", e.getMessage());
			System.out.println("Error "+e.getMessage());
		}
		return "notario/search-auto";
	}
}
