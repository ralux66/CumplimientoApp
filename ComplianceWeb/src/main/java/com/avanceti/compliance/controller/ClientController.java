package com.avanceti.compliance.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.model.Client;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IClientService;
import com.avanceti.compliance.utility.ValidateUrlRequest;

@Controller
@RequestMapping("/client")
public class ClientController {
	@Autowired
	private IClientService clientService;
	private ActiveMenu menuActive = new ActiveMenu();
	
	@GetMapping(value="/newclient")
	public String homeCliente(Model model, @ModelAttribute("client") Client client,@SessionAttribute("user") User user, HttpServletRequest request) {
		//model.addAttribute("client", new Client());	
		menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
		menuActive.setClient("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		
		model.addAttribute("allClient", clientService.allClient());
		return "client/newclient1";
	}
	
	@GetMapping(value="/listclient")
	public String listCliente(Model model, @ModelAttribute("client") Client client,@SessionAttribute("user") User user, HttpServletRequest request) {
		//model.addAttribute("client", new Client());	
		model.addAttribute("allClient", clientService.allClient());
		menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
		menuActive.setClient("k-menu__item--open k-menu__item--here");
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		model.addAttribute("menuActive", menuActive);
		return "client/listclient1";
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
			attributes.addFlashAttribute("msg", "Cliente guardado exitosamente!!");
			model.addAttribute("allClient", clientService.allClient());
			menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
			menuActive.setClient("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
			return "redirect:/client/listclient";
		} catch (Exception e) {
			//System.out.println("newclient/save-->"+client);
			System.out.println("on ERROR");
			model.addAttribute("msg", "Error");		
		}
		return "redirect:/client/listclient";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}