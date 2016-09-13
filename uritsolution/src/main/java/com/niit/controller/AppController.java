package com.niit.controller;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.loginModel;


@Controller
public class AppController {
	String message = "Wlcome";
@RequestMapping("/")
	public String ShowHome(){
	System.out.println("Hello from /");
	
		return "Home";
	}
@RequestMapping("/home")
	public String ShowHom(){
	System.out.println("Hello from /home");
		return "Home";
	}
@RequestMapping("/index")
	public String ShowIndex(){
		return "index";
	}
@RequestMapping("/login")
	public String ShowLogin(){
		return "login";
	}
@RequestMapping("/header")
	public String ShowHeader(){
		return "header";
	}
@RequestMapping("/aboutUs")
	public String ShowAboutUs(){
		return "aboutUs";
	}

}
