package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Client;

@Repository
public interface IClientRepository extends JpaRepository<Client, Integer> {

}
