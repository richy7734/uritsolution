package com.niit.services;

import java.util.List;

import com.niit.model.Product;

public interface productService {

	public void saveProduct(Product product);
	public List<Product> getList();
}
