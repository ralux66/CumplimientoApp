package com.avanceti.compliance.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.avanceti.compliance.model.EstandarCategorias;
import com.avanceti.compliance.model.TipoInstitucion;
import com.avanceti.compliance.repository.IStandarCategoriesRepository;
import com.avanceti.compliance.repository.ITypesInstitutionRepository;

@Service
public class StandarCategoriesServceImpl implements IStandarCategoriesService {
	
	@Autowired
	private IStandarCategoriesRepository standarcategoriesrepository;

	@Override
	@Transactional
	public void save(EstandarCategorias standarcategories) {
		// TODO Auto-generated method stub
		standarcategoriesrepository.save(standarcategories);

	}

}
