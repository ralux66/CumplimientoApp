package com.avanceti.compliance.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avanceti.compliance.model.Profile;
import com.avanceti.compliance.repository.IProfileRepository;

@Service
@Transactional
public class ProfileServiceImpl implements IProfileService {

	@Autowired
	private IProfileRepository profielRepository;
	
	@Override
	public void createProfile(Profile profile) {
		profielRepository.save(profile);
		
	}

	@Override
	public List<Profile> allProfile() {
		return profielRepository.findAll();
	}

	@Override
	public Optional<Profile> findByIdProfile(Profile profile) {
		return profielRepository.findById(profile.getIdperfil());
	}

}