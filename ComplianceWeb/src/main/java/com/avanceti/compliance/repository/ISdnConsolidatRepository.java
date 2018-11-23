package com.avanceti.compliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avanceti.compliance.model.ConsPrim;

@Repository
public interface ISdnConsolidatRepository extends JpaRepository<ConsPrim, Integer> {
	List<ConsPrim> findBysDNNameLike(String name); 
}
