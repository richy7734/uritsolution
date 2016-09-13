package com.niit.dao;

import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {
	public boolean checkLogin(String user, String password){
		if(user.equals("admin")&&password.equals("password")){
			return true;
		}
		else{
			return false;
		}
	}
}
