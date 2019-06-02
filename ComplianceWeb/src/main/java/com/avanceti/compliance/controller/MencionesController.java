package com.avanceti.compliance.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import com.avanceti.compliance.model.Menciones;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.utility.ExecuteShellCommand;
import com.avanceti.compliance.utility.ValidateUrlRequest;


@Controller
@RequestMapping(value = "/menciones")
public class MencionesController {	
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
		return "menciones/search";
		
	}
		

	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch) {
		menuActive.setSearch("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		List<Menciones> listaMenciones = new ArrayList<Menciones>();
		listaMenciones=ExecuteShellCommand.processShellCommand(nameToSearch);
		model.addAttribute("listamenciones", listaMenciones);
		return "menciones/search";
	}
	

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}