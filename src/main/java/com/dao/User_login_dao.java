package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.entity.Admin_login_bean;
import com.entity.User_login_bean;
import com.entity.User_register_bean;

@Component
public class User_login_dao {
	
	@Autowired
	JdbcTemplate template;
	
	public List<User_register_bean> loginDao(){
		// Read the value in the database
        String read = "select * from user";
        
        // Using the query method to get a list of StudentEntity objects
        List<User_register_bean> fatch = template.query(read, new RowMapperUser());
        
       
        return fatch;
	}

}
