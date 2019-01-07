package com.avanceti.compliance.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.Client;
import com.avanceti.compliance.services.IClientService;

@Controller
@RequestMapping("/client")
public class ClientController {
	@Autowired
	private IClientService clientService;
	
	@GetMapping(value="/newclient")
	public String homeCliente(Model model, @ModelAttribute("client") Client client) {
		//model.addAttribute("client", new Client());	
		//model.addAttribute("allClient", clientService.allClient());
		return "client/newclient";
	}
	
	@GetMapping(value="/listaclient")
	public String listaCliente(Model model) {		
		model.addAttribute("allClient", clientService.allClient());
		return "client/listaclient";
	}
	
	
	@PostMapping(value="/saveclient")
	public String saveCliente(@ModelAttribute("client") Client client, Model model, BindingResult result, RedirectAttributes attributes) {
		//System.out.println("Save");
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
			}
			//client.setIdcliente(2);			
			client.setCreadopor("rzepeda");
			client.setModificadopor("rzepeda");
			client.setCreadoel(new Date());
			client.setModificadoel(new Date());
			clientService.createClient(client);	
			//model.addAttribute("message", "Success");
			//attributes.addFlashAttribute("message", "Save Success!!");
			model.addAttribute("allClient", clientService.allClient());
			return "client/listaclient";
		} catch (Exception e) {
			//System.out.println("newclient/save-->"+client);
			System.out.println("on ERROR");
			model.addAttribute("message", "Error");		
		}
		return "client/newclient";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}