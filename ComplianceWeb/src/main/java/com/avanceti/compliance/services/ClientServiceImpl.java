package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avanceti.compliance.model.Client;
import com.avanceti.compliance.repository.IClientRepository;

@Service
public class ClientServiceImpl implements IClientService {
	@Autowired
	IClientRepository clientRepository;

	@Override
	public void createClient(Client client) {
		if (!clientRepository.existsById(client.getIdcliente())) {
			clientRepository.save(client);	
		}		
	}

	@Override
	public List<Client> allClient() {		
		return clientRepository.findAll();
	}

	@Override
	public Optional<Client> findByIdClient(Integer idclient) {		
		return clientRepository.findById(idclient);		
	}
	
	
}
