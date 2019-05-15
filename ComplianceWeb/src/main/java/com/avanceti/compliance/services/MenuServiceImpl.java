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

	public void createMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuRepository.save(menu);
		
	}

	public List<Menu> allMenu() {
		// TODO Auto-generated method stub
		return menuRepository.findAll();
	}

}