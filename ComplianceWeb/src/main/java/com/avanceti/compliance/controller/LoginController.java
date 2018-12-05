package com.avanceti.compliance.controller;

import javax.servlet.http.HttpServletRequest;import org.eclipse.jdt.internal.compiler.lookup.ReductionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.avanceti.compliance.model.User;
import com.avanceti.compliance.services.IUserService;

@Controller
@RequestMapping(value = "/login")
@SessionAttributes("user")
public class LoginController {
	@Autowired
	private IUserService userService;
	
	
	@ModelAttribute("user")
	public User setUpUserForm() {		
		return new User();
	}

	@GetMapping(value = "/")
	public String homeSearch() {
		return "login/login";
	}

	@PostMapping(value = "/gologin")
	public String goLogin(Model model, @ModelAttribute("user") User user,	RedirectAttributes attributes, HttpServletRequest request) {
		User resultUser = new User();
		try {
			resultUser = userService.findByUserLogin(user.getCodusr(), user.getPassword());
			if (!resultUser.getApellido().isEmpty()) {
				user.setApellido(resultUser.getApellido());				
				user.setCasoconsultaList(resultUser.getCasoconsultaList());
				user.setCodusr(resultUser.getCodusr());
				user.setCreadoel(resultUser.getCreadoel());
				user.setCreadopor(resultUser.getCreadopor());
				user.setCustom1(resultUser.getCustom1());
				user.setCustom2(resultUser.getCustom2());
				user.setCustom3(resultUser.getCustom3());
				user.setDui(resultUser.getDui());
				user.setEmail(resultUser.getEmail());
				user.setEstado(resultUser.getEstado());
				user.setFechaNac(resultUser.getFechaNac());
				user.setIdcliente(resultUser.getIdcliente());
				user.setIdperfil(resultUser.getIdperfil());
				user.setIdusr(resultUser.getIdusr());
				user.setModificadoel(resultUser.getModificadoel());
				user.setModificadopor(resultUser.getModificadopor());
				user.setNit(resultUser.getNit());
				user.setNombre(resultUser.getNombre());
				user.setObservacion(resultUser.getObservacion());
				user.setPassword(resultUser.getPassword());
				user.setRolesUsuariosList(resultUser.getRolesUsuariosList());
				user.setSexo(resultUser.getSexo());
				user.setSolicitaEmail(resultUser.getSolicitaEmail());
				user.setTelefono(resultUser.getTelefono());
			}else {
				model.addAttribute("message", "Login failed. Try again.");
				return "login/login";
			}
		} catch (Exception e) {
			System.out.println("Some Error");
		}
		return "redirect:/dashboard/";
	}

}
