package com.avanceti.compliance.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
import com.avanceti.compliance.model.Profile;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IClientService;
import com.avanceti.compliance.services.IProfileService;
import com.avanceti.compliance.services.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private IUserService userService;
	@Autowired
	private IClientService clientService;
	@Autowired
	private IProfileService profileService;
	
	@GetMapping(value = "/newuser")
	public String homeUser(Model model) {		
		model.addAttribute("user", new User());		
		List<User> allUser = userService.allUser();
		List<Client> allClient = clientService.allClient();		
		List<Profile> allProfile = profileService.allProfile();
		
		model.addAttribute("allClient", allClient);		
		model.addAttribute("allUser", allUser);
		model.addAttribute("allProfile", allProfile);
		//System.out.println("allUser "+allUser);
		//System.out.println("allClient"+allClient);
		return "user/formuser";
	}
	
	@PostMapping(value = "/saveuser")
	public String saveUser(@ModelAttribute("user") User user, @ModelAttribute("profile") Profile profile, @ModelAttribute("Client") Client client, Model model, BindingResult result, RedirectAttributes attributes) {
		short variable = 1;  
		System.out.println("SAVE USER");		
//		try {
//			if (result.hasErrors()) {
//				System.out.println("Error en el binding");
//			}			
//			user.setSolicitaEmail(variable);
//			user.setCreadopor("rzepeda");
//			user.setModificadopor("rzepeda");
//			user.setCreadoel(new Date());
//			user.setModificadoel(new Date());			
//			userService.createUser(user);	
//			model.addAttribute("message", "Success");						
//		} catch (Exception e) {			
//			System.out.println("on ERROR");
//			model.addAttribute("message", "Error");		
//		}
//		
		//model.addAttribute("allUser", userService.allUser());		
		return "user/formuser";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
