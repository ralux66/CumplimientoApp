package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avanceti.compliance.model.TipoInstitucion;

@Repository
public interface ITypesInstitutionRepository extends JpaRepository<TipoInstitucion, Integer> {

}
