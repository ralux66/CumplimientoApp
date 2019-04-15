package com.avanceti.compliance.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.avanceti.compliance.model.User;
import com.avanceti.compliance.utility.ValidateUrlRequest;

@Controller
@RequestMapping(value = "/dashboard")
public class DashboardController {
	@GetMapping(value = "/")
	public String goDashboard(@SessionAttribute("user") User user, Model model,
			HttpServletRequest request) {			
		model.addAttribute("user", user);
		if (!ValidateUrlRequest.validateUrlMenus(user, request.getServletPath())) {					
			return "redirect:/error/errorpage";
		}
		return "dashboard/index1";
	}
}