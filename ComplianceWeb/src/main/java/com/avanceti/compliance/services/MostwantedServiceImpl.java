package com.avanceti.compliance.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.avanceti.compliance.model.Mostwanted;
import com.avanceti.compliance.repository.IMostwantedRepository;

public class MostwantedServiceImpl implements IMostwantedService {

	@Autowired
	private IMostwantedRepository mostwantedRepository;
	
	@Override
	public List<Mostwanted> findMostwantedAll() {		
		return mostwantedRepository.findAll();
	}

	@Override
	public void createMostwanted(Mostwanted mostwanted) {
		mostwantedRepository.save(mostwanted);		
	}

}
