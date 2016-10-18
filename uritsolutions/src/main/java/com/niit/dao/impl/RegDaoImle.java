package com.niit.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.regDao;
import com.niit.model.Customer;

@Repository("regDao")
public class RegDaoImle implements regDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addCustomer(Customer customer){
		System.out.println("----Hello from Registration Dao----");
		Session session = sessionFactory.openSession();
		System.out.println("----Session Created----");
		Transaction transaction =(Transaction) session.beginTransaction();
		System.out.println("----Creating Transaction----");
		session.saveOrUpdate(customer);
		System.out.println("----Saving Data----");
		transaction.commit();
	}

}
