package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.entity.User_register_bean;

@Component
public class User_register_dao {
	
	@Autowired
	JdbcTemplate template;
	
	public int registerDao(User_register_bean bean){
		
		String query = "insert into user (username, user_password, email, first_name, last_name, address, phone_number,"
				+ " date_of_birth, gender) values(?,?,?,?,?,?,?,?,?)";
		
		int result = template.update(query,bean.getUsername(),bean.getPassword(),bean.getEmail(),bean.getFirst_name(),
				bean.getLast_name(),bean.getAddress(),bean.getPhone_number(),bean.getDate_of_birth(),bean.getGender());
		
		
		return result;
	}
}
