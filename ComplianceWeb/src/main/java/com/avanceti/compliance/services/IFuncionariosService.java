package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.Funcionarios;

public interface IFuncionariosService {
	void createFuncionario(Funcionarios funcionarios);
	List<Funcionarios> AllFuncionarios();
	List<Funcionarios> findByName(String nameToSearch);
}
