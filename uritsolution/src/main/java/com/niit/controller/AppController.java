package com.niit.controller;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
@Controller
public class AppController {
String message = "Wlcome";
@RequestMapping("/")
public String ShowHome(){
	System.out.println("Hello");
		return "Home";
	}
@RequestMapping("/home")
public String ShowHom(){
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
}
