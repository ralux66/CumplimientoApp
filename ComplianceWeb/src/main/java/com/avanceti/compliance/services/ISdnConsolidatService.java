package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.ConsPrim;

public interface ISdnConsolidatService {
	List<ConsPrim> findAllSdnConsolidat();
	List<ConsPrim> findByName(String nameToSearch);
}
