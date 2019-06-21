package com.avanceti.compliance.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.avanceti.compliance.model.Dependencias;
import com.avanceti.compliance.model.Instituciones;
import com.avanceti.compliance.model.TipoInstitucion;
import com.avanceti.compliance.repository.IDependenciasRepository;
import com.avanceti.compliance.repository.IInstitutionsRepository;
import com.avanceti.compliance.repository.ITypesInstitutionRepository;

@Service
public class DependenciasServceImpl implements IDependenciasService {
	
	@Autowired
	private IDependenciasRepository idependenciasRepository;

	@Override
	@Transactional
	public void save(Dependencias dependencias) {
		// TODO Auto-generated method stub
		idependenciasRepository.save(dependencias);

	}

}
