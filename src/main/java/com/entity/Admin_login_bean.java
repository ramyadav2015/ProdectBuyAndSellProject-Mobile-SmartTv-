package com.entity;

import org.springframework.stereotype.Component;

@Component
public class Admin_login_bean {
	
	private int id;
	private String username;
	private String admin_password;
	private String email;
	private String first_name;
	private String last_name;
	private String address;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	@Override
	public String toString() {
		return "Admin_login_bean [id=" + id + ", username=" + username + ", admin_password=" + admin_password
				+ ", email=" + email + ", first_name=" + first_name + ", last_name=" + last_name + ", address="
				+ address + "]";
	}
	
	
	

}
