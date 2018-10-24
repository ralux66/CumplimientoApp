package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;

import com.avanceti.compliance.model.Client;

public interface IClientService {
	void createClient(Client client);
	List<Client> allClient();
	Optional<Client> findByIdClient(Integer idclient);
}
