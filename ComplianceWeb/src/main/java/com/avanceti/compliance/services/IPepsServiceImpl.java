package com.avanceti.compliance.services;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avanceti.compliance.model.Peps;
import com.avanceti.compliance.repository.IPepsRepository;

@Service
@Transactional
public class IPepsServiceImpl implements IPepsService {
	@Autowired
	private IPepsRepository pepsRepository;

	
	@Override
	public List<Peps> findAll() {
		// TODO Auto-generated method stub		
		return pepsRepository.findAll();
	}

	@Override
	public void Save(Peps peps) {
		pepsRepository.save(peps);		
	}

	@Override
	public List<Peps> findByFuncionarioLike(String nameToSearch) {
		// TODO Auto-generated method stub
		return pepsRepository.findByfuncionarioContaining(nameToSearch);
	}

}
