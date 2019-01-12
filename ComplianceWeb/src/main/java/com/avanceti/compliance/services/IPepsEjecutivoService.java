package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.PepsEjecutivo;

public interface IPepsEjecutivoService {
	void createPeps(PepsEjecutivo pepsEjecutivo);
	List<PepsEjecutivo> allPeps();
	//Optional<Client> findByIdClient(Integer idclient);
}
