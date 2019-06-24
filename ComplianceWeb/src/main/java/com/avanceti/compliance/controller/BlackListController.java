package com.avanceti.compliance.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.model.ConsPrim;
import com.avanceti.compliance.model.Ofac;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IOfacService;
import com.avanceti.compliance.services.ISdnConsolidatService;
import com.avanceti.compliance.utility.JaroWinklerDistance;
import com.avanceti.compliance.utility.ValidateUrlRequest;


@Controller
@RequestMapping(value = "/blacklist")
public class BlackListController {
	@Autowired
	private ISdnConsolidatService isdnService;
	
	@Autowired
	private IOfacService ofacService;
	
	private ActiveMenu menuActive = new ActiveMenu();
	
	

	@GetMapping(value = "/search")
	public String homeSearch(Model model,@SessionAttribute("user") User user, HttpServletRequest request) {
		//System.out.println("Print Url "+request.getRequestURL());	
		System.out.println("Print Url "+request.getServletPath());	
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);	
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		//System.out.println("Print Url "+request.getContextPath());
		//System.out.println("Print Url "+request.getQueryString());
		return "blacklist/search1";
		
	}
	
	@GetMapping(value = "/newblacklist")
	public String newBlackList(Model model,@SessionAttribute("user") User user, HttpServletRequest request) {
		
		menuActive.setBlacklist("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		
		return "blacklist/newblacklist";
	}

	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch) {
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		
		List<ConsPrim> resultQuery = new LinkedList<ConsPrim>();
		List<ConsPrim> resultSearchBlacklist = new LinkedList<ConsPrim>();
		
		List<Ofac> resultQueryOfac = new LinkedList<Ofac>();
		List<Ofac> resultSearchOfac = new LinkedList<Ofac>();
		Double score;		
		try {
			resultQuery = isdnService.findByName("%" + nameToSearch.trim() + "%");
			resultQueryOfac = ofacService.findByLikeName("%" + nameToSearch.trim() + "%");
			for (ConsPrim consPrim : resultQuery) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), consPrim.getsDNName());
				if (score > 0.60) {
					consPrim.setScore(score);
					resultSearchBlacklist.add(consPrim);
					//System.out.println("Print "+consPrim.getsDNName());
				} 
			}
			for (Ofac ofac : resultQueryOfac) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), ofac.getName());
				if (score > 0.60) {
					ofac.setScore(score);
					resultSearchOfac.add(ofac);
					//System.out.println("Print "+consPrim.getsDNName());
				} 
			}
			model.addAttribute("allResultreturn", resultSearchBlacklist);	
			model.addAttribute("allResultreturnOfac", resultSearchOfac);	
			//attributes.addFlashAttribute("message", "Sucess");
		} catch (Exception e) {
			//attributes.addFlashAttribute("message", e.getMessage());
			System.out.println("Error "+e.getMessage());
		}
		return "blacklist/search1";
	}
	

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}