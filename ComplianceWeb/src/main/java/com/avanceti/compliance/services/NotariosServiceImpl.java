package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avanceti.compliance.model.Notaut;
import com.avanceti.compliance.repository.INotariosRepository;

@Service
@Transactional
public class NotariosServiceImpl implements INotariosService {
	@Autowired
	INotariosRepository notarioRepository;

	public void createNotario(Notaut notario) {
		// TODO Auto-generated method stub
		notarioRepository.save(notario);
	}

	public List<Notaut> allNotarios() {
		// TODO Auto-generated method stub
		return notarioRepository.findAll();
	}

	public Optional<Notaut> findByIdNotario(Integer idnotario) {
		// TODO Auto-generated method stub
		return notarioRepository.findById(idnotario);
	}

	public List<Notaut> findByName(String nameToSearch) {
		// TODO Auto-generated method stub
		return notarioRepository.findBynombresLike(nameToSearch);
	}
}
