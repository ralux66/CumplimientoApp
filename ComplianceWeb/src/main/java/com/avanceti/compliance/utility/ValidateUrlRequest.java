package com.avanceti.compliance.utility;

import java.util.List;

import com.avanceti.compliance.model.Menu;
import com.avanceti.compliance.model.ModulosPerfiles;
import com.avanceti.compliance.model.User;

public class ValidateUrlRequest {

	public static boolean validateUrlMenus(User user, String url) {
		List<ModulosPerfiles> listModulosPerfil;
		List<Menu> menusList;
		boolean menuReturn = false;
		listModulosPerfil = user.getIdperfil().getModulosPerfilesList();
		for (ModulosPerfiles modulosPerfiles : listModulosPerfil) {						
			menusList = modulosPerfiles.getIdmodulo().getMenusList();
			for (Menu menu : menusList) {
				if (menu.getCustom1().equalsIgnoreCase(url)) {
					menuReturn=true;
				}
			}
		}		
		return menuReturn;
		
	}
	
}
