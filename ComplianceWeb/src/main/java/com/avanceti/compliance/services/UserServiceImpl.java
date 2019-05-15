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

	public void createUser(User user) {
		// TODO Auto-generated method stub
		userRepository.save(user);
		
	}

	public List<User> allUser() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	public User findByUserLogin(String user, String password) {
		// TODO Auto-generated method stub
		return userRepository.findByCodusrAndPassword(user, password);
	}
	
	
}
