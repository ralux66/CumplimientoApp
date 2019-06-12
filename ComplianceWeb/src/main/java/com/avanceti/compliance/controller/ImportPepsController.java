package com.avanceti.compliance.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.avanceti.compliance.model.TipoInstitucion;
import com.avanceti.compliance.services.ITypesIntitutionService;
import com.avanceti.compliance.utility.JsonUrlConext;

@Controller
@RequestMapping(value = "/import")
public class ImportPepsController {
	@Autowired
	private ITypesIntitutionService tipoinstituciones;

	@GetMapping("/peps")
	public String homeimport() {
		return "ImportPeps/importpeps";
	}

	@PostMapping(value = "/goimport")
	public String goSearch(Model model) {
		List<TipoInstitucion> listaintitucion = new ArrayList<TipoInstitucion>();
		String[] urls = { "https://www.transparencia.gob.sv/api/v1/institution_types.json" };
		// "https://www.transparencia.gob.sv/api/v1/standard_categories.json",
//		"https://www.transparencia.gob.sv/api/v1/institutions.json", 
//		"https://www.transparencia.gob.sv/api/v1/dependencies.json",
//		"https://www.transparencia.gob.sv/api/v1/committees.json",
//		"https://www.transparencia.gob.sv/api/v1/officials.json"
		JsonUrlConext urlconext = new JsonUrlConext();

		for (int i = 0; i < urls.length; i++) {
			listaintitucion = urlconext.ImportTipoInstituciones(urls[i]);
		}

		for (TipoInstitucion institucion : listaintitucion) {
			tipoinstituciones.save(institucion);
		}

		return "importPeps/listpeps";
	}
}
