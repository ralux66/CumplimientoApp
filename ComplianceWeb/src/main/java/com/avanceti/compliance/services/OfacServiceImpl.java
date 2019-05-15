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

	public List<Ofac> findAllOfac() {
		// TODO Auto-generated method stub
		return ofacDao.findAll();
	}

	public List<Ofac> findByLikeName(String name) {
		// TODO Auto-generated method stub
		return ofacDao.findByNameContaining(name);
	}	
}
