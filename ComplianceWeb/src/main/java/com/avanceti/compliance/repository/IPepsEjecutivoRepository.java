package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avanceti.compliance.model.PepsEjecutivo;
@Repository
public interface IPepsEjecutivoRepository extends JpaRepository<PepsEjecutivo, Integer> {

}
