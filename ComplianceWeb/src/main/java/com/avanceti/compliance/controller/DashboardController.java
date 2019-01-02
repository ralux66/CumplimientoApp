package com.avanceti.compliance.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.avanceti.compliance.model.Menu;
import com.avanceti.compliance.model.ModulosPerfiles;
import com.avanceti.compliance.model.User;

@Controller
@RequestMapping(value = "/dashboard")
public class DashboardController {
	@GetMapping(value = "/")
	public String goDashboard(@SessionAttribute("user") User user, Model model) {	
		List<ModulosPerfiles> listModulosPerfil;
		List<Menu> menusList;
		listModulosPerfil = user.getIdperfil().getModulosPerfilesList();
		for (ModulosPerfiles modulosPerfiles : listModulosPerfil) {			
			System.out.println("Modulos: " + modulosPerfiles.getIdmodulo().getNombre());
			menusList = modulosPerfiles.getIdmodulo().getMenusList();
			for (Menu menu : menusList) {
				System.out.println("Menu: " + menu.getCustom1());
			}
		}
		model.addAttribute("user", user);
		return "dashboard/index";
	}
}