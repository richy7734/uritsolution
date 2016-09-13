package com.niit.model;

import javax.persistence.*;

@Entity
@Table(name = "Customers" ,uniqueConstraints = {@UniqueConstraint(columnNames ={"C_ID"})})

public class regModel {

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "C_ID", length = 10, nullable = true)
	private int C_ID;
@Column(name = "Name", length = 30, nullable = true)
	private String name;
@Column(name = "UserName", length = 30, nullable = true)
	private String username;
@Column(name = "Phone", length = 12, nullable = true)	
	private String phone;
@Column(name = "Address", length = 70, nullable = true)
	private String address;
@Column(name = "Password", length = 20, nullable = true)
	private String password;
	
	public int getC_ID(){
		return C_ID;
	}
	public void setC_ID(int C_ID){
		this.C_ID = C_ID;
	}
	
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getPhone(){
		return phone;
	}
	public void setPhone(String phone){
		this.phone = phone;
	}
	
	public String getAddress(){
		return address;
	}
	public void setAddress(String address){
		this.address = address;
	}
	
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
}
