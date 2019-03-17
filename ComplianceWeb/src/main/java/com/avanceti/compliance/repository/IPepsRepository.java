package com.avanceti.compliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avanceti.compliance.model.Peps;
@Repository
public interface IPepsRepository extends JpaRepository<Peps, Integer> {
	List<Peps> findByfuncionarioContaining(String name);
	
}
