package com.sagala.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	
	@GetMapping("/systems")
	public String systemsPage() {
		return "systems";
	}
	
	@GetMapping("/leaders")
	public String leadersPage() {
		return "leaders";
	}
	
	@GetMapping("/denied")
	public String accessDenied() {
		return "denied";
	}
}
