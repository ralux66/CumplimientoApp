package com.avanceti.compliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avanceti.compliance.model.Ofac;

@Repository
public interface IOfacRepository extends JpaRepository<Ofac, Integer> {
	
	
	List<Ofac> findByCountry(String country);
	
	List<Ofac> findByCountryAndCountryCode(String country, String countryCode);
	
	List<Ofac> findByCountryCode(String countryCode);
	
    List<Ofac> findByNameContaining(String name);
}
