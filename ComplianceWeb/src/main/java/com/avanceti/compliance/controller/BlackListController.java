package com.avanceti.compliance.controller;


import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.ConsPrim;
import com.avanceti.compliance.services.ISdnConsolidatService;
import com.avanceti.compliance.utility.JaroWinklerDistance;


@Controller
@RequestMapping(value = "/search")
public class BlackListController {
	@Autowired
	private ISdnConsolidatService isdnService;
	
	

	@GetMapping(value = "/blacklist")
	public String homeSearch() {
		return "blacklist/search";
	}

	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch,
			RedirectAttributes attributes) {
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
}
