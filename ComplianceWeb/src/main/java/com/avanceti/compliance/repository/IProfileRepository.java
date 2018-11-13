package com.avanceti.compliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Profile;

@Repository
public interface IProfileRepository extends JpaRepository<Profile, Integer> {

}
