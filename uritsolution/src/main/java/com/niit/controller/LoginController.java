package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.LoginDAO;
import com.niit.model.loginModel;

@Controller
public class LoginController {

	@Autowired
	LoginDAO logindao;
	
	@RequestMapping(value  = "/CheckLogin", method = RequestMethod.POST)
	public ModelAndView checkLogin(@RequestParam("user") String username,@RequestParam("pwd") String pwd){
		loginModel login = new loginModel();
		login.setUsername(username);
		login.setPwd(pwd);
		
		System.out.println("Username : "+username);
		System.out.println("Password : "+pwd);
		
		ModelAndView sucessModel = new ModelAndView("Home");
		ModelAndView failModel = new ModelAndView("RegTemp");
		
		if(logindao.checkLogin(username,pwd)){
			sucessModel.addObject("login.username",login.getUsername());
			return sucessModel;
		}
		else{
			return failModel;
		}
	}
}
