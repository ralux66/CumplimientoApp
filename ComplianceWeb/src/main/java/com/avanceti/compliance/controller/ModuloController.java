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
import com.avanceti.compliance.model.Modulos;
import com.avanceti.compliance.services.IMenuService;
import com.avanceti.compliance.services.IModulosService;

@Controller
@RequestMapping(value = "/modulos")
public class ModuloController {

	@Autowired
	private IModulosService modulosService;
	
	@GetMapping(value = "/newmodulo")
	public String homeModulos(@ModelAttribute Modulos modulos) {
		return "modulos/newmodulos";
	}
	
	@GetMapping(value = "/listamodulo")
	public String listModulos(Model model) {		
		model.addAttribute("modelList", modulosService.allModulos());
		return "modulos/listamodulos";
	}
	
	@PostMapping(value="/savemodulo")
	public String saveCliente(@ModelAttribute("modulos") Modulos modulos, Model model, BindingResult result, RedirectAttributes attributes) {		
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
				return "modulos/newmodulos";
			}			
			modulosService.createModulo(modulos);
		} catch (Exception e) {			
			System.out.println("On Error");
			model.addAttribute("message", "Error");		
		}
		return "redirect:/modulos/listamodulo";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}