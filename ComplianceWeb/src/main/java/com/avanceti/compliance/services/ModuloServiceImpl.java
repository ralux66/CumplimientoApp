package com.avanceti.compliance.services;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avanceti.compliance.model.Modulos;
import com.avanceti.compliance.repository.IModulosRepository;

@Service
@Transactional
public class ModuloServiceImpl implements IModulosService {
	
	@Autowired
	private IModulosRepository moduloRepository;
	

	@Override
	public void createModulo(Modulos modulos) {
		moduloRepository.save(modulos);	
	}

	@Override
	public List<Modulos> allModulos() {		
		return moduloRepository.findAll();
	}

	@Override
	public Modulos findByIdmodulo(Integer idmodulo) {		
		return moduloRepository.findByidmodulo(idmodulo);
	}

}