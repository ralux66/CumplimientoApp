package com.avanceti.compliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avanceti.compliance.model.ConsPrim;
import com.avanceti.compliance.model.Mostwanted;

@Repository
public interface IMostwantedRepository extends JpaRepository<Mostwanted, Integer> {
	List<Mostwanted> findBynombreCompletoLike(String name); 
}
