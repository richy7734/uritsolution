package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class appController {
	
	@RequestMapping("/")
	public String showHome(){
		return "Home";
	}
	
	@RequestMapping("/home")
	public String showHome_(){
		return "Home";
	}
	
	@RequestMapping("/login")
	public String showLogin(){
		return "login";
	}
	
	@RequestMapping("/aboutUs")
	public String showAboutUs(){
		return "aboutUs";
	}
	
	
}
