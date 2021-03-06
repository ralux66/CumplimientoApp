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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.model.Client;
import com.avanceti.compliance.model.Profile;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IClientService;
import com.avanceti.compliance.services.IProfileService;
import com.avanceti.compliance.services.IUserService;
import com.avanceti.compliance.utility.ValidateUrlRequest;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private IUserService userService;
	@Autowired
	private IClientService clientService;
	@Autowired
	private IProfileService profileService;
	
	private ActiveMenu menuActive = new ActiveMenu();
	
	@GetMapping(value = "/newuser")
	public String homeUser(Model model, @ModelAttribute("user") User user,
			@SessionAttribute("user") User userlogin, HttpServletRequest request) {				
		List<Client> allClient = clientService.allClient();		
		List<Profile> allProfile = profileService.allProfile();
		if (!ValidateUrlRequest.validateUrlMenus(userlogin, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		model.addAttribute("allClient", allClient);			
		model.addAttribute("allProfile", allProfile);
		menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
		menuActive.setUser("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		return "user/newuser1";
	}
	
	@GetMapping(value = "/listuser")
	public String listUser(Model model, @ModelAttribute("user") User user,
			@SessionAttribute("user") User userlogin, HttpServletRequest request) {	
		List<User> allUser = userService.allUser();
		List<Client> allClient = clientService.allClient();		
		List<Profile> allProfile = profileService.allProfile();
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		model.addAttribute("allClient", allClient);
		model.addAttribute("allProfile", allProfile);
		model.addAttribute("allUser", allUser);
		menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
		menuActive.setUser("k-menu__item--open k-menu__item--here");
		model.addAttribute("menuActive", menuActive);
		return "user/listuser1";
	}
	
	@PostMapping(value = "/saveuser")
	public String saveUser(@ModelAttribute("user") User user, 
			Model model, BindingResult result, RedirectAttributes attributes) {
		short variable = 1;
		
		System.out.println(user);
		
		if (result.hasErrors()) {
			//System.out.println(result.);
			return "user/formuser";
		}
		try {						
			user.setSolicitaEmail(variable);
			user.setCreadopor("rzepeda");
			user.setModificadopor("rzepeda");
			user.setEstado("A");
			user.setCreadoel(new Date());
			user.setModificadoel(new Date());
			userService.createUser(user);	
			model.addAttribute("message", "Success");
			menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
			menuActive.setUser("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
		} catch (Exception e) {			
			System.out.println("on ERROR");
			System.out.println(e.getMessage());
			//model.addAttribute("message", "Error");		
		}
		
		//model.addAttribute("allUser", userService.allUser());		
		return "user/formuser";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
