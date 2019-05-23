package com.avanceti.compliance.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Notaut;

@Repository
public interface INotariosRepository extends JpaRepository<Notaut, Integer> {	
	List<Notaut> findBynombresLike(String name); 
}
