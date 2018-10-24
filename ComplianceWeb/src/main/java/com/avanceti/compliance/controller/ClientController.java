package com.avanceti.compliance.controller;

import java.text.SimpleDateFormat;
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

import com.avanceti.compliance.model.Client;
import com.avanceti.compliance.services.IClientService;

@Controller
@RequestMapping("/client")
public class ClientController {
	@Autowired
	private IClientService clientService;
	
	@GetMapping(value = "/formclient")
	public String homeCliente(Model model) {
		model.addAttribute("allClient", clientService.allClient());
		return "client/formclient";
	}
	
	@PostMapping(value = "/saveclient")
	public String saveCliente(@ModelAttribute Client cliente, Model model,BindingResult result, RedirectAttributes attributes) {
		Client client = new Client();		
		SimpleDateFormat simpleFormate = new SimpleDateFormat("yyyy-MM-dd");
		client.setCiudad("SS");
		//client.setCreadoel(simpleFormate.format(new Date()));
		return "client/formclient";
	}
}
