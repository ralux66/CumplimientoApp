package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Comites;

@Repository
public interface IComitesRepository extends JpaRepository<Comites, Long> {

}
