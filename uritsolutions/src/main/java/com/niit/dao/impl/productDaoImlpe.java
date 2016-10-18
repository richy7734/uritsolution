package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.productDao;
import com.niit.model.Product;

@Repository
public class productDaoImlpe implements productDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void saveProduct(Product product) {

		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(product);
		transaction.commit();
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Product> getList() {
		Session session = this.sessionFactory.openSession();
		List<Product> proList = session.createQuery("from Product").list();
		return proList;
	}

}
