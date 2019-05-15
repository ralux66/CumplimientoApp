package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avanceti.compliance.model.Client;
import com.avanceti.compliance.repository.IClientRepository;

@Service
@Transactional
public class ClientServiceImpl implements IClientService {
	@Autowired
	IClientRepository clientRepository;

	public void createClient(Client client) {
		// TODO Auto-generated method stub
		clientRepository.save(client);
		
	}

	public List<Client> allClient() {
		// TODO Auto-generated method stub
		return clientRepository.findAll();
	}

	public Optional<Client> findByIdClient(Integer idclient) {
		// TODO Auto-generated method stub
		return clientRepository.findById(idclient);
	}

	
	
	
}
