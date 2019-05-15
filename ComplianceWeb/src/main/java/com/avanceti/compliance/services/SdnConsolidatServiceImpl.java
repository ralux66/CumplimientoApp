package com.avanceti.compliance.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avanceti.compliance.model.ConsPrim;
import com.avanceti.compliance.repository.ISdnConsolidatRepository;

@Service
@Transactional
public class SdnConsolidatServiceImpl implements ISdnConsolidatService  {
	@Autowired
	private ISdnConsolidatRepository sdnConsolidateRepo;

	public List<ConsPrim> findAllSdnConsolidat() {
		return sdnConsolidateRepo.findAll();
	}

	public List<ConsPrim> findByName(String nameToSearch) {
		// TODO Auto-generated method stub
		return sdnConsolidateRepo.findBysDNNameLike(nameToSearch);
	}

	
}
