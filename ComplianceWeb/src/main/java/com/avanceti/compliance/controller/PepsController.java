package com.avanceti.compliance.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avanceti.compliance.model.PepsEjecutivo;
import com.avanceti.compliance.services.IPepsEjecutivoService;
import com.avanceti.compliance.utility.JaroWinklerDistance;

@Controller
@RequestMapping("/peps")
public class PepsController {
	
	@Autowired
	private IPepsEjecutivoService pepsEjecutivoService;
	
	@GetMapping(value = "/newpeps")
	public String formMostWanted(Model model, @ModelAttribute("peps") PepsEjecutivo peps) {
		return "peps/newpeps";
	}
	
	@GetMapping(value = "/search")
	public String homeSearch() {
		return "peps/search";
	}
	
	@GetMapping(value = "/listapeps")
	public String formListaMostWanted(Model model) {
		model.addAttribute("allPeps", pepsEjecutivoService.allPeps());
		return "peps/listapeps";
	}
	
	@PostMapping(value="/savepeps")
	public String saveCliente(@ModelAttribute("peps") PepsEjecutivo peps, Model model, BindingResult result, RedirectAttributes attributes) {
		//System.out.println("Save");
		try {
			if (result.hasErrors()) {
				System.out.println("Error en el binding");
			}
			//client.setIdcliente(2);			
			//peps.setCreadopor("rzepeda");
			//peps.setModificadopor("rzepeda");
			//peps.setCreadoel(new Date());
			//peps.setModificadoel(new Date());
			peps.setId(92);
			peps.setIdInstitucion(87);
			pepsEjecutivoService.createPeps(peps);
			//model.addAttribute("message", "Success");
			//attributes.addFlashAttribute("message", "Save Success!!");
			model.addAttribute("allPeps", pepsEjecutivoService.allPeps());
			model.addAttribute("msg", "Succes!");	
			return "peps/listapeps";
		} catch (Exception e) {
			//System.out.println("newclient/save-->"+client);
			System.out.println("on ERROR");
			model.addAttribute("message", "Error");		
		}
		return "peps/newpeps";
	}

	@PostMapping(value = "/gosearch")
	public String goSearch(Model model, @RequestParam("nameToSearch") String nameToSearch,	RedirectAttributes attributes) {
		List<PepsEjecutivo> resultQuery = new LinkedList<>();
		List<PepsEjecutivo> resultSearchPeps = new LinkedList<>();
		Double score;		
		try {
			resultQuery = pepsEjecutivoService.findByfuncionario("%" + nameToSearch + "%");
			for (PepsEjecutivo peps : resultQuery) {				
				score = JaroWinklerDistance.apply(nameToSearch.trim(), peps.getFuncionario());
				if (score > 0.70) {					
					peps.setScore(score);
					resultSearchPeps.add(peps);
				} 
			}
			model.addAttribute("allResultreturn", resultSearchPeps);			
			attributes.addFlashAttribute("message", "Busqueda satisfactoria");
		} catch (Exception e) {
			attributes.addFlashAttribute("message", e.getMessage());
			System.out.println("Error "+e.getMessage());
		}
		return "peps/search";
	}
}
