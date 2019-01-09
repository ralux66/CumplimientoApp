package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Mostwanted;

@Repository
public interface IMostwantedRepository extends JpaRepository<Mostwanted, Integer> {

}
