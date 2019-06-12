package com.avanceti.compliance.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.avanceti.compliance.model.TipoInstitucion;
import com.avanceti.compliance.repository.ITypesInstitutionRepository;

@Service
public class TypesInstitutionServceImpl implements ITypesIntitutionService {
	
	@Autowired
	private ITypesInstitutionRepository typesinstitutionrepository;

	@Override
	@Transactional
	public void save(TipoInstitucion tipoInstitucion) {
		// TODO Auto-generated method stub
		typesinstitutionrepository.save(tipoInstitucion);

	}

}
