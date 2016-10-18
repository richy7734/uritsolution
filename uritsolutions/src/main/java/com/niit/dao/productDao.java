package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface productDao {
	
	public void saveProduct(Product product);
	public List<Product> getList();
}
