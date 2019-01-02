package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Menu;

@Repository
public interface IMenuRepository extends JpaRepository<Menu, Integer> {

}
