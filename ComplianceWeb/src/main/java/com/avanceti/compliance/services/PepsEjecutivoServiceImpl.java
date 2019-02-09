package com.avanceti.compliance.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avanceti.compliance.model.PepsEjecutivo;
import com.avanceti.compliance.repository.IPepsEjecutivoRepository;

@Service
@Transactional
public class PepsEjecutivoServiceImpl implements IPepsEjecutivoService {
	@Autowired
	private IPepsEjecutivoRepository pepsRepository;

	@Override
	public void createPeps(PepsEjecutivo pepsEjecutivo) {
		pepsRepository.save(pepsEjecutivo);
		
	}

	@Override
	public List<PepsEjecutivo> allPeps() {
		// TODO Auto-generated method stub
		return pepsRepository.findAll();
	}

	@Override
	public List<PepsEjecutivo> findByfuncionario(String nameToSearch) {		
		return pepsRepository.findByfuncionarioLike(nameToSearch);
	}

}
