package com.avanceti.compliance.controller;



import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.model.Funcionarios;
import com.avanceti.compliance.model.Peps;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IFuncionariosService;
import com.avanceti.compliance.services.IPepsService;
//import com.avanceti.compliance.utility.JaroWinklerDistance;
import com.avanceti.compliance.utility.JaroWinklerDistance;
import com.avanceti.compliance.utility.ValidateUrlRequest;

@Controller
@RequestMapping("/peps")
public class PepsController {
	
	@Autowired
	private IPepsService pepsServices;
	
	@Autowired
	private IFuncionariosService funcionariosService;
	
	private ActiveMenu menuActive = new ActiveMenu();
	
	
	@GetMapping(value = "/newpeps")
	public String formNewPeps(Model model, @ModelAttribute("peps") Peps peps,
			@SessionAttribute("user") User user, HttpServletRequest request) {
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		menuActive.setPep("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		return "peps/newpeps";
	}
	
	@GetMapping(value = "/search")
	public String homeSearch(Model model,@SessionAttribute("user") User user, 
			HttpServletRequest request) {
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		return "peps/search";
	}
	
	@GetMapping(value = "/listpeps")
	public String formListaPeps(Model model,@SessionAttribute("user") User user, HttpServletRequest request) {
		List<Peps> pepslist = new LinkedList<Peps>();
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		pepslist = pepsServices.findAll();
		model.addAttribute("allpeps", pepslist);
		menuActive.setPep("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		return "peps/listapeps";
	}
	
	@PostMapping(value="/savepeps")
	public String savePeps(@ModelAttribute("peps") Peps peps, Model model,
			BindingResult result, RedirectAttributes attributes) {
		//System.out.println("Save");
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
			}
			//client.setIdcliente(2);			
			//peps.setCreadopor("rzepeda");
			//peps.setModificadopor("rzepeda");
			//peps.setCreadoel(new Date());
			//peps.setModificadoel(new Date());
			//peps.setpe(92);
			//peps.setIdInstitucion(87);
			pepsServices.Save(peps);
			//model.addAttribute("message", "Success");
			//attributes.addFlashAttribute("message", "Save Success!!");
			model.addAttribute("allPeps", pepsServices.findAll());
			model.addAttribute("msg", "Succes!");	
			//menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
			menuActive.setPep("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
			return "peps/listapeps";
		} catch (Exception e) {
			//System.out.println("newclient/save-->"+client);
			System.out.println("on ERROR");
			model.addAttribute("message", "Error");		
		}
		return "peps/newpeps";
	}

	
	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch,	RedirectAttributes attributes) {
		List<Peps> resultQuery = new LinkedList<Peps>();
		List<Funcionarios> resultQueryfuncionarios = new LinkedList<Funcionarios>();
		List<Funcionarios> resultSearchfuncionarios = new LinkedList<Funcionarios>();
		List<Peps> resultSearchPeps = new LinkedList<Peps>();
		Double score;		
		try {
			resultQuery = pepsServices.findByFuncionarioLike("%"+nameToSearch+"%");
			resultQueryfuncionarios = funcionariosService.findByName("%"+nameToSearch+"%");
			for (Peps peps : resultQuery) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), peps.getFuncionario());
				if (score > 0.60) {					
					peps.setScore(score);
					resultSearchPeps.add(peps);
					
				} 
			}
			
			for (Funcionarios funcionarios : resultQueryfuncionarios) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), funcionarios.getName());
				if (score > 0.60) {
					funcionarios.setScore(score);
					resultSearchfuncionarios.add(funcionarios);
				} 
			}
			
			model.addAttribute("AllResultreturn", resultSearchPeps);
			model.addAttribute("AllResultreturnfuncionarios", resultSearchfuncionarios);
			attributes.addFlashAttribute("message", "Busqueda satisfactoria");
			menuActive.setSearch("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
		} catch (Exception e) {
			attributes.addFlashAttribute("message", e.getMessage());
			System.out.println("Error "+e.getMessage());
		}
		return "peps/search";
	}
	
}
