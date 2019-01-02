package com.avanceti.compliance.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avanceti.compliance.model.Ofac;
import com.avanceti.compliance.repository.IOfacRepository;

@Service
@Transactional
public class OfacServiceImpl implements IOfacService {
	
	@Autowired
	private IOfacRepository ofacDao;
	
	@Override
	public List<Ofac> findAllOfac() {
		
		return ofacDao.findAll();
	}

	@Override
	public List<Ofac> findByLikeName(String name) {		
		return ofacDao.findByNameContaining(name);
	}

	
}
