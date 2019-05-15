package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avanceti.compliance.model.Abynotsus;
import com.avanceti.compliance.repository.IAbogadoRepository;

@Service
@Transactional
public class AbogadosServiceImpl implements IAbogadosService {

	@Autowired
	IAbogadoRepository abogadoRepository;

	public void createAbogados(Abynotsus abogados) {
		// TODO Auto-generated method stub
		abogadoRepository.save(abogados);
	}

	public List<Abynotsus> allAbogados() {
		// TODO Auto-generated method stub
		return abogadoRepository.findAll();
	}

	public Optional<Abynotsus> findByIdAbogados(Integer idabogado) {
		// TODO Auto-generated method stub
		return abogadoRepository.findById(idabogado);
	}

	public List<Abynotsus> findByName(String nameToSearch) {
		// TODO Auto-generated method stub
		return abogadoRepository.findBynombreLike(nameToSearch);
	}
}
