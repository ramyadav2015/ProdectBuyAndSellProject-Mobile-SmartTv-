package com.entity;

public class User_login_bean {
	
	private String userName;
	private String password;
	
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	@Override
	public String toString() {
		return "user_login_bean [userName=" + userName + ", password=" + password + "]";
	}
	
	
	
	

}
