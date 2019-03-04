package com.avanceti.compliance.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.model.ConsPrim;
import com.avanceti.compliance.services.ISdnConsolidatService;
import com.avanceti.compliance.utility.JaroWinklerDistance;


@Controller
@RequestMapping(value = "/blacklist")
public class BlackListController {
	@Autowired
	private ISdnConsolidatService isdnService;
	private ActiveMenu menuActive = new ActiveMenu();
	
	

	@GetMapping(value = "/listblacklist")
	public String homeSearch(Model model) {
		//menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		
		return "blacklist/search1";
	}
	
	@GetMapping(value = "/newblacklist")
	public String newBlackList(Model model) {
		
		menuActive.setBlacklist("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		return "blacklist/newblacklist";
	}

	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch,
			RedirectAttributes attributes) {
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		
		List<ConsPrim> resultQuery = new LinkedList<>();
		List<ConsPrim> resultSearchBlacklist = new LinkedList<>();
		Double score;		
		try {
			resultQuery = isdnService.findByName("%" + nameToSearch + "%");
			for (ConsPrim consPrim : resultQuery) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), consPrim.getsDNName());
				if (score > 0.70) {
					consPrim.setScore(score);
					resultSearchBlacklist.add(consPrim);
				} 
			}
			model.addAttribute("allResultreturn", resultSearchBlacklist);			
			attributes.addFlashAttribute("message", "Sucess");
		} catch (Exception e) {
			attributes.addFlashAttribute("message", e.getMessage());
			System.out.println("Error "+e.getMessage());
		}
		return "blacklist/search";
	}
	

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}