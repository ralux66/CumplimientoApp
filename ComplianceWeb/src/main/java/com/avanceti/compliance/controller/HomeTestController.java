package com.avanceti.compliance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.avanceti.compliance.model.Ofac;
import com.avanceti.compliance.services.IOfacService;

@Controller
public class HomeTestController {
	List<Ofac> listOfacFinal = null;
	
	@Autowired	
	private IOfacService ofacService;
	
		
	@GetMapping(value = "/")
	public String getHome(Model model) {		
		listOfacFinal = ofacService.findAllOfac();
		
		model.addAttribute("allListOfac", listOfacFinal);
		return "index";
	}
}
