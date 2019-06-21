package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.EstandarCategorias;

@Repository
public interface IStandarCategoriesRepository extends JpaRepository<EstandarCategorias, Long> {

}
