package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.User;

public interface IUserService {
	void createUser(User user);
	List<User> allUser();
	User findByUserLogin(String user, String password);
}
