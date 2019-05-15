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

	public void createProfile(Profile profile) {
		// TODO Auto-generated method stub
		profielRepository.save(profile);
	}

	public List<Profile> allProfile() {
		// TODO Auto-generated method stub
		return profielRepository.findAll();
	}

	public Optional<Profile> findByIdProfile(Profile profile) {
		// TODO Auto-generated method stub
		return profielRepository.findById(profile.getIdperfil());
	}
	
	

}