package com.avanceti.compliance.services;

import java.util.List;
import com.avanceti.compliance.model.Mostwanted;

public interface IMostwantedService {
	List<Mostwanted> findMostwantedAll();
	List<Mostwanted> findByLikeName(String nameToSearch);
	void createMostwanted(Mostwanted mostwanted);
}
