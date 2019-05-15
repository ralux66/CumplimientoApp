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

import com.avanceti.compliance.model.Abynotsus;
import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.services.IAbogadosService;
import com.avanceti.compliance.utility.JaroWinklerDistance;


@Controller
@RequestMapping(value = "/notario")
public class NotariosController {
	@Autowired
	private IAbogadosService abogadoSevices;
	private ActiveMenu menuActive = new ActiveMenu();

	@GetMapping(value = "/search")
	public String homeSearch() {
		menuActive.setSearch("k-menu__item--open k-menu__item--here");			
		return "notario/search";
	}

	@GetMapping(value = "/listanotario")
	public String listBlacklist(Model model) {
		model.addAttribute("allAbogados", abogadoSevices.allAbogados());	
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		return "notario/listnotario";
	}
	
	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch,
			RedirectAttributes attributes) {
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		List<Abynotsus> resultQuery = new LinkedList<Abynotsus>();
		List<Abynotsus> resultSearchBlacklist = new LinkedList<Abynotsus>();
		Double score;		
		try {
			resultQuery = abogadoSevices.findByName("%" + nameToSearch + "%").stream().filter(b->b.getSancionadoComo().equals("NOTARIO")).collect(Collectors.toList());
			for (Abynotsus abynotsus : resultQuery) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), abynotsus.getNombre());
				if (score > 0.70) {
					abynotsus.setScore(score);
					resultSearchBlacklist.add(abynotsus);
				} 
			}
			model.addAttribute("allResultreturn", resultSearchBlacklist);			
			attributes.addFlashAttribute("message", "Sucess");
		} catch (Exception e) {
			attributes.addFlashAttribute("message", e.getMessage());
			System.out.println("Error "+e.getMessage());
		}
		return "notario/search";
	}
}
