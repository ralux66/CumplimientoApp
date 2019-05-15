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

	public List<Peps> findByFuncionarioLike(String nameToSearch) {
		// TODO Auto-generated method stub
		return pepsRepository.findByfuncionarioContaining(nameToSearch);
	}

	public List<Peps> findAll() {
		// TODO Auto-generated method stub
		return pepsRepository.findAll();
	}

	public void Save(Peps peps) {
		// TODO Auto-generated method stub
		pepsRepository.save(peps);	
	}

	

}
