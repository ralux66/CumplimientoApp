package com.avanceti.compliance.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avanceti.compliance.model.Menu;
import com.avanceti.compliance.repository.IMenuRepository;

@Service
@Transactional
public class MenuServiceImpl implements IMenuService {
	
	@Autowired
	private IMenuRepository menuRepository;

	@Override
	public void createMenu(Menu menu) {
		menuRepository.save(menu);
	}

	@Override
	public List<Menu> allMenu() {
		return menuRepository.findAll();
	}
}