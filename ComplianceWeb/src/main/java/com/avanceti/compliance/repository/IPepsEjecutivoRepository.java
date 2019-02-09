package com.avanceti.compliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avanceti.compliance.model.PepsEjecutivo;
@Repository
public interface IPepsEjecutivoRepository extends JpaRepository<PepsEjecutivo, Integer> {
	List<PepsEjecutivo> findByfuncionarioLike(String name); 
}
