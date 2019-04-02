package com.avanceti.compliance.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.ConsPrim;
import com.avanceti.compliance.model.Mostwanted;

import com.avanceti.compliance.services.IMostwantedService;
import com.avanceti.compliance.utility.JaroWinklerDistance;

@Controller
@RequestMapping("/mostwanted")
public class MostWantedController {
	@Autowired
	private IMostwantedService mostwantedService;
	
	@GetMapping(value = "/newmostwanted")
	public String formMostWanted(Model model, @ModelAttribute("mostwanted") Mostwanted mostwanted) {
		return "mostwanted/newmostwanted";
	}
	
	@GetMapping(value = "/search")
	public String search(Model model) {
		return "mostwanted/search";
	}
	
	@GetMapping(value = "/listamostwanted")
	public String formListaMostWanted(Model model,@ModelAttribute("mostwanted") Mostwanted mostwanted) {
		model.addAttribute("allMostWanted", mostwantedService.findMostwantedAll());
		return "mostwanted/listamostwanted";
	}
	
	@PostMapping(value="/savemostwanted")
	public String saveCliente(@ModelAttribute("mostwanted") Mostwanted mostwanted, 
			Model model, BindingResult result, RedirectAttributes attributes) {
		//System.out.println("Save");
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
			}
			//client.setIdcliente(2);			
			mostwanted.setCreadopor("rzepeda");
			mostwanted.setModificadopor("rzepeda");
			mostwanted.setCreadoel(new Date());
			mostwanted.setModificadoel(new Date());
			mostwantedService.createMostwanted(mostwanted);	
			//model.addAttribute("message", "Success");
			//attributes.addFlashAttribute("message", "Save Success!!");
			model.addAttribute("allMostWanted", mostwantedService.findMostwantedAll());
			model.addAttribute("msg", "Succes!");		
			return "mostwanted/listamostwanted";
		} catch (Exception e) {
			//System.out.println("newclient/save-->"+client);
			System.out.println("on ERROR "+e.getMessage());
			model.addAttribute("message", "Error");		
		}
		return "mostwanted/newmostwanted";
	}
	
	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch,
			RedirectAttributes attributes) {
		List<Mostwanted> resultQuery = new LinkedList<>();
		List<Mostwanted> resultSearchMostwanted = new LinkedList<>();
		Double score;		
		try {
			resultQuery = mostwantedService.findByLikeName("%" + nameToSearch + "%");
			for (Mostwanted consPrim : resultQuery) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), 
						consPrim.getNombreCompleto());
				if (score > 0.50) {
					consPrim.setScore(score);
					resultSearchMostwanted.add(consPrim);
				} 
			}
			model.addAttribute("allResultreturn", resultSearchMostwanted);			
			attributes.addFlashAttribute("message", "Sucess");
		} catch (Exception e) {
			attributes.addFlashAttribute("message", e.getMessage());
			System.out.println("Error "+e.getMessage());
		}
		return "mostwanted/search";
	}
	

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
