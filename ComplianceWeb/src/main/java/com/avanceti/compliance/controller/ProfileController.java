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
import com.avanceti.compliance.model.Profile;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IModulosService;
import com.avanceti.compliance.services.IProfileService;
import com.avanceti.compliance.utility.ValidateUrlRequest;

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {

	@Autowired
	private IProfileService profileService;
	private ActiveMenu menuActive = new ActiveMenu();
	
	
	@Autowired
	private IModulosService modulosService;
	
	@GetMapping(value = "/newprofile")
	public String homeProfile(@ModelAttribute Profile profile, Model model,
			@SessionAttribute("user") User user, HttpServletRequest request) {
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		model.addAttribute("modulolista", modulosService.allModulos());	
		menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
		menuActive.setProfile("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		return "profile/newprofile1";
	}
	
	@GetMapping(value = "/listaprofile")
	public String listaProfile(Model model,@ModelAttribute Profile profile,
			@SessionAttribute("user") User user, HttpServletRequest request) {	
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		model.addAttribute("profilelista", profileService.allProfile());
		model.addAttribute("modulolista", modulosService.allModulos());	
		menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
		menuActive.setProfile("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
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
			menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
			menuActive.setProfile("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
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