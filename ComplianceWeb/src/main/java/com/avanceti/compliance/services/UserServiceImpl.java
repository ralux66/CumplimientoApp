package com.avanceti.compliance.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avanceti.compliance.model.User;
import com.avanceti.compliance.repository.IUserRepository;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserRepository userRepository;
	
	@Override
	public void createUser(User user) {
		userRepository.save(user);		
	}

	@Override
	public List<User> allUser() {		
		return userRepository.findAll();
	}

	@Override
	public User findByUserLogin(String user, String password) {		
		return userRepository.findByCodusrAndPassword(user, password);		
	}
}
