package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;
import com.avanceti.compliance.model.Notaut;


public interface INotariosService {
	void createNotario(Notaut notario);
	List<Notaut> allNotarios();
	Optional<Notaut> findByIdNotario(Integer idnotario);
	List<Notaut> findByName(String nameToSearch);
}
