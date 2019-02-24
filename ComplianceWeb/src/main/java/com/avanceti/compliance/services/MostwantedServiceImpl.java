package com.avanceti.compliance.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avanceti.compliance.model.Mostwanted;
import com.avanceti.compliance.repository.IMostwantedRepository;

@Service
@Transactional
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

	@Override
	public List<Mostwanted> findByName(String nameToSearch) {
		
		return mostwantedRepository.findBynombreCompletoLike(nameToSearch);
	}

}
