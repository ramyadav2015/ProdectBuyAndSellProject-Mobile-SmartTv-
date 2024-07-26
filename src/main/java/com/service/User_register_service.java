package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.User_register_dao;
import com.entity.User_register_bean;

@Component
public class User_register_service {
	
	@Autowired
	User_register_dao dao;
	
	public int userRegister(User_register_bean bean) {
		
		int result = dao.registerDao(bean);
		
		return result;
	}

}
