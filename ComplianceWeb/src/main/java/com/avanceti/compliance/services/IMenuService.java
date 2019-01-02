package com.avanceti.compliance.services;

import java.util.List;

import com.avanceti.compliance.model.Menu;

public interface IMenuService {
	void createMenu(Menu menu);
	List<Menu> allMenu();
}