package com.avanceti.compliance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.avanceti.compliance.model.User;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
	@GetMapping("/")
	public String goDashboard(@SessionAttribute("user") User user, Model model) {
		System.out.println("Email: " + user.getEmail());
		System.out.println("First Name: " + user.getNombre());
		model.addAttribute("user", user);
		return "dashboard/dashboard";
	}
}
