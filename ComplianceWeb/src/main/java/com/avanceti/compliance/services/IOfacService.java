package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.Ofac;

public interface IOfacService {
	List<Ofac> findAllOfac();
	List<Ofac> findByLikeName(String name);
}
