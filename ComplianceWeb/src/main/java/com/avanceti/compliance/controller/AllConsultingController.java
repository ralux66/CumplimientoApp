package com.avanceti.compliance.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.avanceti.compliance.utility.JaroWinklerDistance;
import com.avanceti.compliance.model.Ofac;
import com.avanceti.compliance.model.ResultSearch;
import com.avanceti.compliance.services.IOfacService;

@Controller
@RequestMapping("/allconsulting")
public class AllConsultingController {
	
	
	@Autowired
	private IOfacService ofacService;
	
	@GetMapping(value = "/search")
	public String formConsulting() {
		return "formsearchanylist";
	}
	
	
	@PostMapping(value = "/goSearch")
	public String goConsulting(Model model, @RequestParam("nameSearch") String name) {
		Double score;	
		List<ResultSearch> resultSerachList =  new LinkedList<>();	
		ResultSearch resultSerach =  new ResultSearch();			
		JaroWinklerDistance jaroSearch = new JaroWinklerDistance();
		List<Ofac> allOfacList = new LinkedList<>();	
		
		
			
		allOfacList = ofacService.findByLikeName(name);
		
		for (Ofac ofac : allOfacList) {			
			score = jaroSearch.apply(name, ofac.getName());
			if (score > 0.70) {
				resultSerach.setName(ofac.getName());
				resultSerach.setAddress(ofac.getAddress());
				resultSerach.setAltername(ofac.getEntNameOrig());
				resultSerach.setCity(ofac.getCity());
				resultSerach.setCountry(ofac.getCountry());
				resultSerach.setKeyEntity(ofac.getId());
				resultSerach.setListSource("ANALIZER");
				resultSerach.setProgram(ofac.getFrom_file());
				resultSerach.setRemarks(ofac.getNationalityOrig());
				resultSerach.setScore(score);
				resultSerach.setTitle("Blacklist");
				resultSerach.setTypeEntity("Natural");
				resultSerachList.add(resultSerach);
				resultSerach = new ResultSearch(); 
			}
		}
		
		model.addAttribute("allResult", resultSerachList);
		return "formsearchanylist";
	}
}
