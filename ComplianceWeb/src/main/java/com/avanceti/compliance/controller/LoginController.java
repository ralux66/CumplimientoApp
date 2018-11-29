package com.avanceti.compliance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IUserService;



@Controller
@RequestMapping(value = "/login")
public class LoginController {
	@Autowired
	private IUserService userService;
	
	
	@GetMapping(value = "/")
	public String homeSearch() {		
		return "login/login";
	}
	
	@PostMapping(value = "/gologin")
	public String goLogin(Model model, @RequestParam("user") String user, @RequestParam("password") String password,
			RedirectAttributes attributes) {
		User userlogin = new User();
		try {	
			userlogin = userService.findByUserLogin(user, password);
			if (!userlogin.getNombre().isEmpty()) {
				System.out.println(userlogin.getIdcliente().getNombrepropio1());				
				return "redirect:/dashboard/";
			}
		} catch (Exception e) {
			System.out.println("Some Error");
		}		
		return "login/login";
	}
	
}
