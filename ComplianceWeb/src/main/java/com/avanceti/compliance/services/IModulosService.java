package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.Modulos;

public interface IModulosService {
	void createModulo(Modulos modulos);
	List<Modulos> allModulos();
	Modulos findByIdmodulo(Integer moduloId);
}