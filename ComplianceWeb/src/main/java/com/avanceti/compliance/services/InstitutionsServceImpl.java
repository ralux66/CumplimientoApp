package com.avanceti.compliance.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.avanceti.compliance.model.Instituciones;
import com.avanceti.compliance.model.TipoInstitucion;
import com.avanceti.compliance.repository.IInstitutionsRepository;
import com.avanceti.compliance.repository.ITypesInstitutionRepository;

@Service
public class InstitutionsServceImpl implements IInstitutionsService {
	
	@Autowired
	private IInstitutionsRepository institutionsRepository;

	@Override
	@Transactional
	public void save(Instituciones instituciones) {
		// TODO Auto-generated method stub
		institutionsRepository.save(instituciones);

	}

}
