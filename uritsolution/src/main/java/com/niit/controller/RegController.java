package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.regModel;

@Controller
public class RegController {

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public ModelAndView Register(@RequestParam("C_ID") int C_ID,
							@RequestParam("name") String name,
							@RequestParam("user") String username,
							@RequestParam("phone") String phone,
							@RequestParam("addrs") String address,
							@RequestParam("pwd") String password){
		regModel reg = new regModel();
		reg.setC_ID(C_ID);
		reg.setName(name);
		reg.setUsername(username);
		reg.setPhone(phone);
		reg.setAddress(address);
		reg.setPassword(password);
		
		ModelAndView model = new ModelAndView("confirmReg");
		model.addObject("reg.name",reg.getName());
		model.addObject("reg.username", reg.getUsername());
		model.addObject("reg.phone", reg.getPhone());
		model.addObject("reg.address", reg.getAddress());
		
		return model;
	}
	
}
