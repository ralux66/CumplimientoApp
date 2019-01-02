package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;

import com.avanceti.compliance.model.Profile;

public interface IProfileService {
	void createProfile(Profile profile);
	List<Profile> allProfile();
	Optional<Profile> findByIdProfile(Profile profile);	
}