package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.User;

@Repository
public interface IUserRepository extends JpaRepository<User, Integer> {

}
