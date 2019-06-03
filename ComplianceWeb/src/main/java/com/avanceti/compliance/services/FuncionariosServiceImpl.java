package com.avanceti.compliance.services;

import java.util.List;

//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.avanceti.compliance.model.Funcionarios;
import com.avanceti.compliance.repository.IFuncionarioRepository;

@Service
public class FuncionariosServiceImpl implements IFuncionariosService {	
	@Autowired
	private IFuncionarioRepository funcionariosRepository;
	
	@Override
	@Transactional
	public void createFuncionario(Funcionarios funcionarios) {
		// TODO Auto-generated method stub
		funcionariosRepository.save(funcionarios);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Funcionarios> AllFuncionarios() {
		// TODO Auto-generated method stub
		return funcionariosRepository.findAll();
	}

	@Override
	@Transactional(readOnly=true)
	public List<Funcionarios> findByName(String nameToSearch) {
		// TODO Auto-generated method stub
		return funcionariosRepository.findBynameLike(nameToSearch);		
	}
}
