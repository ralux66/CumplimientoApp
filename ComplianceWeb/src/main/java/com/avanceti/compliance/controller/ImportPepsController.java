package com.avanceti.compliance.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.avanceti.compliance.model.EstandarCategorias;
import com.avanceti.compliance.model.Instituciones;
import com.avanceti.compliance.model.TipoInstitucion;
import com.avanceti.compliance.services.IInstitutionsService;
import com.avanceti.compliance.services.IStandarCategoriesService;
import com.avanceti.compliance.services.ITypesIntitutionService;
import com.avanceti.compliance.utility.JsonUrlConext;

@Controller
@RequestMapping(value = "/import")
public class ImportPepsController {
	@Autowired
	private ITypesIntitutionService tipoinstituciones;

	@Autowired
	private IStandarCategoriesService standarServices;
	
	@Autowired
	private IInstitutionsService institutionsService;

	@GetMapping("/peps")
	public String homeimport() {
		return "ImportPeps/importpeps";
	}

	@PostMapping(value = "/goimport")
	public String goSearch(Model model) {
		List<TipoInstitucion> listaintitucion = new ArrayList<TipoInstitucion>();
		List<EstandarCategorias> listacategorias = new ArrayList<EstandarCategorias>();
		List<Instituciones> listainstituciones = new ArrayList<Instituciones>();
		String[] urls = { 
				"https://www.transparencia.gob.sv/api/v1/institution_types.json",
				"https://www.transparencia.gob.sv/api/v1/standard_categories.json",
				"https://www.transparencia.gob.sv/api/v1/institutions.json" };
//		"https://www.transparencia.gob.sv/api/v1/dependencies.json",
//		"https://www.transparencia.gob.sv/api/v1/committees.json",
//		"https://www.transparencia.gob.sv/api/v1/officials.json"
		JsonUrlConext urlconext = new JsonUrlConext();

		for (int i = 0; i < urls.length; i++) {
			if (i == 0) {
				listaintitucion = urlconext.ImportTipoInstituciones(urls[i]);
				for (TipoInstitucion institucion : listaintitucion) {
					// System.out.println("Valores de la lista "+institucion.getName());
					tipoinstituciones.save(institucion);
				}
			}
			if (i == 1) {
				listacategorias = urlconext.ImportStandarCategories(urls[i]);
				for (EstandarCategorias standarcategories : listacategorias) {
					// System.out.println("Valores de la lista "+institucion.getName());
					standarServices.save(standarcategories);
				}
			}
			if (i == 2) {
				listainstituciones = urlconext.ImportInsittuciones(urls[i]);
				for (Instituciones instituciones : listainstituciones) {
					 System.out.println("Valores de la lista "+instituciones.getName());
					
					institutionsService.save(instituciones);
				}
			}
		}
		return "redirect:/peps";
	}
}
