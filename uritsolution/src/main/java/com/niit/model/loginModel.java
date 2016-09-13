package com.niit.model;

public class loginModel{
	
	private String username;
	private String pwd;
	private String n_ull;
	
	public void setN_ull(){
		this.n_ull = ".";
	}
	public String getN_ull(){
		return n_ull;
	}
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username = username;
	}
	public String getPwd(){
		return pwd;
	}
	public void setPwd(String pwd){
		this.pwd = pwd;
	}
}
