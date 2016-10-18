package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.services.productService;
import com.niit.services.regService;

@Controller
public class loginController {

	@Autowired
	private regService reg_Service;

	@Autowired
	productService product_Service;


	@RequestMapping("/RegTemp")
	public String loginFail(){
		return "RegTemp";
	}
	
	@ModelAttribute("regCommand")
	public Customer getCustomer() {
		return new Customer();
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("regCommand") Customer customer, BindingResult Result) {
		try {
			reg_Service.addCustomer(customer);
		} catch (Exception e) {

		}

		if (Result.hasErrors()) {
			return new ModelAndView("/RegTemp");
		} else {
			return new ModelAndView("/Home");
		}
	}
	
//Product Controllers
	
	@RequestMapping("/showProducts")
	public String showProducts(Model model){
		model.addAttribute("listProduct", this.product_Service.getList());
		return "showProducts";
	}
	
	@RequestMapping("/admin")
	public String showAdmin(Model model){
		model.addAttribute("product", new Product());
		model.addAttribute("listProduct", this.product_Service.getList());
		return "admin";
	}

	@ModelAttribute("saveProductCommand")
	public Product getProduct() {
		return new Product();
	}

	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("saveProductCammand") Product product, BindingResult Result) {

		product_Service.saveProduct(product);

		return new ModelAndView("Home");
	}

	@ModelAttribute("updateProductCommand")
	public Product getUpProduct() {
		return new Product();
	}

	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public ModelAndView updateProduct(@ModelAttribute("updateProductCommand") Product product, BindingResult Result) {

		return new ModelAndView();
	}
}
