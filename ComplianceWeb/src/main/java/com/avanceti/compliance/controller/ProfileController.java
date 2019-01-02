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
import com.avanceti.compliance.model.Profile;
import com.avanceti.compliance.services.IProfileService;

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {

	@Autowired
	private IProfileService profileService;
	
	@GetMapping(value = "/newprofile")
	public String homeProfile(@ModelAttribute Profile profile) {
		return "profile/newprofile";
	}
	
	@GetMapping(value = "/listaprofile")
	public String listaProfile(Model model) {		
		//model.addAttribute("modelList", modulosService.allModulos());
		return "profile/listaprofile";
	}
	
	@PostMapping(value="/saveprofile")
	public String saveProfile(@ModelAttribute("profile") Profile profile, Model model, BindingResult result, RedirectAttributes attributes) {		
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
				return "profile/newprofile";
			}			
			profileService.createProfile(profile);
		} catch (Exception e) {			
			System.out.println("On Error "+e.getMessage());
			//model.addAttribute("message", "Error");	
			return "profile/newprofile";
		}
		return "redirect:/profile/listaprofile";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}