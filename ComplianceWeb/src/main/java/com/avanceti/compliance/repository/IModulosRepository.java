package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Modulos;

@Repository
public interface IModulosRepository extends JpaRepository<Modulos, Integer> {
	Modulos findByidmodulo(Integer idmodulo);
}