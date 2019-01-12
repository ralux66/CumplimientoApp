package com.avanceti.compliance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.avanceti.compliance.model.Mostwanted;
import com.avanceti.compliance.model.PepsEjecutivo;

@Controller
@RequestMapping("/peps")
public class PepsController {
	@GetMapping(value = "/newpeps")
	public String formMostWanted(Model model, @ModelAttribute("peps") PepsEjecutivo peps) {
		return "peps/newpeps";
	}
	@GetMapping(value = "/listapeps")
	public String formListaMostWanted(Model model) {
		//model.addAttribute("allMostWanted", mostwantedService.findMostwantedAll());
		return "peps/listapeps";
	}
}
