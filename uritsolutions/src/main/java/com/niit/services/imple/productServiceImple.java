package com.niit.services.imple;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.productDao;
import com.niit.model.Product;
import com.niit.services.productService;
@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
@Service("productService")
public class productServiceImple implements productService {

	@Autowired
	private productDao productDAO;
	
	public void saveProduct(Product product) {
		
		productDAO.saveProduct(product);
	}

	public List<Product> getList() {
		
		return this.productDAO.getList();
	}

}
