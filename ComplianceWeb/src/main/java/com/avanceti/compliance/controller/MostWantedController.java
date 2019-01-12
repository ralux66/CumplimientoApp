package com.avanceti.compliance.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.avanceti.compliance.model.Mostwanted;

import com.avanceti.compliance.services.IMostwantedService;

@Controller
@RequestMapping("/mostwanted")
public class MostWantedController {
	@Autowired
	private IMostwantedService mostwantedService;
	
	@GetMapping(value = "/newmostwanted")
	public String formMostWanted(Model model, @ModelAttribute("mostwanted") Mostwanted mostwanted) {
		return "mostwanted/newmostwanted";
	}
	@GetMapping(value = "/listamostwanted")
	public String formListaMostWanted(Model model) {
		model.addAttribute("allMostWanted", mostwantedService.findMostwantedAll());
		return "mostwanted/listamostwanted";
	}
	
	@PostMapping(value="/savemostwanted")
	public String saveCliente(@ModelAttribute("mostwanted") Mostwanted mostwanted, Model model, BindingResult result, RedirectAttributes attributes) {
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
			return "mostwanted/listamostwanted";
		} catch (Exception e) {
			//System.out.println("newclient/save-->"+client);
			System.out.println("on ERROR "+e.getMessage());
			model.addAttribute("message", "Error");		
		}
		return "mostwanted/newmostwanted";
	}
}
