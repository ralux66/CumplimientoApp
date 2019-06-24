package com.avanceti.compliance.services;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avanceti.compliance.model.Comites;
import com.avanceti.compliance.repository.IComitesRepository;


@Service
@Transactional
public class ComitesServiceImpl implements IComitesService {

	@Autowired
	private IComitesRepository comitesRepository;
	@Override
	public void save(Comites comites) {
		// TODO Auto-generated method stub
		comitesRepository.save(comites);
	}

}
