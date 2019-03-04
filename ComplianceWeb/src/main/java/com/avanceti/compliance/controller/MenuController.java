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

import com.avanceti.compliance.model.ActiveMenu;
import com.avanceti.compliance.model.Menu;
import com.avanceti.compliance.services.IMenuService;
import com.avanceti.compliance.services.IModulosService;

@Controller
@RequestMapping(value = "/menu")
public class MenuController {
	
	@Autowired
	private IMenuService menuService;

	@Autowired
	private IModulosService modulosService;
	private ActiveMenu menuActive = new ActiveMenu();
	
	@GetMapping(value = "/newmenu")
	public String homeModulos(@ModelAttribute("menu") Menu menu,  Model model, BindingResult result, RedirectAttributes attributes) {
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
				return "menu/newmenu1";
			}	
			model.addAttribute("moduloLista", modulosService.allModulos());
			menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
			menuActive.setMenus("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
			//menuService.createMenu(menu);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "menu/newmenu1";
	}	
	
	@GetMapping(value = "/listamenu")
	public String listaMenu(Model model,@ModelAttribute("menu") Menu menu) {
		try {			
			model.addAttribute("menuLista", menuService.allMenu());
			model.addAttribute("moduloLista", modulosService.allModulos());
			menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
			menuActive.setMenus("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "menu/listmenu1";
	}
	
	@PostMapping(value="/savemenu")
	public String saveMenu(@ModelAttribute("menu") Menu menu, Model model, BindingResult result, RedirectAttributes attributes) {		
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
				return "menu/newmenu";
			}
			menu.setCreadopor("rzepeda");
			menu.setModificadopor("rzepeda");			
			menu.setCreadoel(new Date());
			menu.setModificadoel(new Date());
			
			menuService.createMenu(menu);
			menuActive.setConfiguration("k-menu__item--open k-menu__item--here");
			menuActive.setMenus("k-menu__item--open k-menu__item--here");
			model.addAttribute("menuActive", menuActive);
		} catch (Exception e) {			
			System.out.println("On Error "+e.getMessage());				
			return "menu/newmenu";
		}
		return "redirect:/menu/listamenu1";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}