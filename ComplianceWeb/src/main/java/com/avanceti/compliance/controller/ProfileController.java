package com.avanceti.compliance.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.Modulos;
import com.avanceti.compliance.model.Profile;
import com.avanceti.compliance.services.IModulosService;
import com.avanceti.compliance.services.IProfileService;

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {

	@Autowired
	private IProfileService profileService;
	
	@Autowired
	private IModulosService modulosService;
	
	@GetMapping(value = "/newprofile")
	public String homeProfile(@ModelAttribute Profile profile, Model model) {
		model.addAttribute("modulolista", modulosService.allModulos());		
		return "profile/newprofile1";
	}
	
	@GetMapping(value = "/listaprofile")
	public String listaProfile(Model model,@ModelAttribute Profile profile) {		
		model.addAttribute("profilelista", profileService.allProfile());
		model.addAttribute("modulolista", modulosService.allModulos());	
		return "profile/listprofile1";
	}
	
	@PostMapping(value="/saveprofile")
	public String saveProfile(@ModelAttribute("profile") Profile profile, Model model, BindingResult result, RedirectAttributes attributes) {		
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
				return "profile/newprofile";
			}	
			profile.setCreadopor("rzepeda");
			profile.setModificadopor("rzepeda");			
			profile.setCreadoel(new Date());
			profile.setModificadoel(new Date());
			
			profileService.createProfile(profile);
			model.addAttribute("msg", "Succes!");
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