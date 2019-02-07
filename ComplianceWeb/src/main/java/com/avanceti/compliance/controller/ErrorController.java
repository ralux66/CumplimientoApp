package com.avanceti.compliance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/error")
public class ErrorController {
	@GetMapping(value="/errorpage")
	public String errorInformation(Model model) {		
		//model.addAttribute("allClient", clientService.allClient());
		return "error/errorpage";
	}
}
