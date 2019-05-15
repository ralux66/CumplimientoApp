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

	public void createModulo(Modulos modulos) {
		// TODO Auto-generated method stub
		moduloRepository.save(modulos);	
	}

	public List<Modulos> allModulos() {
		// TODO Auto-generated method stub
		return moduloRepository.findAll();
	}

	public Modulos findByIdmodulo(Integer moduloId) {
		// TODO Auto-generated method stub
		return moduloRepository.findByidmodulo(moduloId);
	}
	


}