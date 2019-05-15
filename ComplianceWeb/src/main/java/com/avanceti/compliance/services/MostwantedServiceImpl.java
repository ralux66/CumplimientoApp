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

	public List<Mostwanted> findMostwantedAll() {
		// TODO Auto-generated method stub
		return mostwantedRepository.findAll();
	}

	public List<Mostwanted> findByLikeName(String nameToSearch) {
		// TODO Auto-generated method stub
		return mostwantedRepository.findBynombreCompletoLike(nameToSearch);		
	}

	public void createMostwanted(Mostwanted mostwanted) {
		// TODO Auto-generated method stub
		mostwantedRepository.save(mostwanted);
	}
}
