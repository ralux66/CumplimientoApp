package com.avanceti.compliance.services;

import java.util.List;
import com.avanceti.compliance.model.Mostwanted;

public interface IMostwantedService {
	List<Mostwanted> findMostwantedAll();
	void createMostwanted(Mostwanted mostwanted);
}
