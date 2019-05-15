package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;
import com.avanceti.compliance.model.Abynotsus;

public interface IAbogadosService {
	void createAbogados(Abynotsus abogados);
	List<Abynotsus> allAbogados();
	Optional<Abynotsus> findByIdAbogados(Integer idabogado);
	List<Abynotsus> findByName(String nameToSearch);
}
