package com.avanceti.ComplianceWeb;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import com.avanceti.compliance.model.Ofac;
import com.avanceti.compliance.repository.IOfacRepository;



/**
 * @author rzepeda
 *
 */

public class App {
	public static void main(String[] args) {
		Page<Ofac> optionalOfac = null;
		List<Ofac> listOfacCountry = null;
		List<Ofac> listOfacCountry1 = null;
		List<Ofac> listOfacCountry2 = null;
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context.xml");
		IOfacRepository ofacRepository = context.getBean("iOfacRepository", IOfacRepository.class);
		optionalOfac = ofacRepository.findAll(PageRequest.of(20, 50, Sort.by("name").ascending()));
		//optionalOfac = ofacRepository.findAll(Sort.by("source").descending());
		//System.out.println("Info Ofac " + optionalOfac.get().getName());
		/*for (Ofac ofac : optionalOfac) {
			System.out.println(ofac);
		}
		
		System.out.println("*****************************************************");
		listOfacCountry = ofacRepository.findByCountry("Palestinian");
		for (Ofac ofac : listOfacCountry) {
			System.out.println(ofac);
		}
		
		
		System.out.println("*****************************************************");
		listOfacCountry1 = ofacRepository.findByCountryCode("ZWE");
		for (Ofac ofac1 : listOfacCountry1) {
			System.out.println(ofac1);
		}*/
		
		

		System.out.println("*****************************************************");
		listOfacCountry2 = ofacRepository.findByCountryAndCountryCode("Zimbabwe", "ZWE");
		int count = (int) ofacRepository.count();
		for (Ofac ofac2 : listOfacCountry2) {
			System.out.println(ofac2.getId()+" "+ofac2.getCountry()+" "+ofac2.getCountryCode());
		}
		System.out.println("Conteo total "+count);
		
		context.close();
	}
}
