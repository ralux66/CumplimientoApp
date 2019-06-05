package com.avanceti.compliance.controller;

import java.util.LinkedList;
import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import com.avanceti.compliance.model.Funcionarios;
import com.avanceti.compliance.utility.JsonUrlConext;

@Controller
@RequestMapping(value = "/import")
public class ImportPepsController {

	@GetMapping("/peps")
	public String homeimport() {
		return "importPeps/importpeps";
	}
	
	@PostMapping(value = "/goimport")
	public String goSearch(Model model, @RequestParam("urlimport") String urlimport) {
		
		List<Funcionarios> resultQuery = new LinkedList<>();
		JsonUrlConext urlconext = new JsonUrlConext();
		urlconext.ImportPep(urlimport);
		return "importPeps/listpeps";
	}
}
