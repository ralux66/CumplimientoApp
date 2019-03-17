package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.Peps;

public interface IPepsService {
	List<Peps> findByFuncionarioLike(String nameToSearch);
	List<Peps> findAll();
	void Save(Peps peps);
}
