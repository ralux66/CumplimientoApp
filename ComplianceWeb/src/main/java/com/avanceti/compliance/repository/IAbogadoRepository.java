package com.avanceti.compliance.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Abynotsus;


@Repository
public interface IAbogadoRepository extends JpaRepository<Abynotsus, Integer> {
	List<Abynotsus> findBynombreLike(String nombre);
	//String name,
	//AndnombreLike
}
