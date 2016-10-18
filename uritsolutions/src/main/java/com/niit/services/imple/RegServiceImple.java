package com.niit.services.imple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.niit.dao.regDao;
import com.niit.model.Customer;
import com.niit.services.regService;

@Service("service")
public class RegServiceImple implements regService {

	@Autowired 
	private regDao regDAO;

	public void addCustomer(Customer customer){
		System.out.println("----Hello from Registration Service----");
		System.out.println(customer.getC_ID());
		System.out.println(customer.getName());
		System.out.println(customer.getPhone());
		System.out.println(customer.getUsername());
		System.out.println(customer.getAddress());
		regDAO.addCustomer(customer);
	}
}
