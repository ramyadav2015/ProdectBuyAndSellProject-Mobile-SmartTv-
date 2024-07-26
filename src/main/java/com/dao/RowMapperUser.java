package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;

import com.entity.ProdectBean;
import com.entity.User_login_bean;
import com.entity.User_register_bean;

public class RowMapperUser implements RowMapper<User_register_bean> {
  
	
	
	
	@Override
	public User_register_bean mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		User_register_bean user = new User_register_bean();
		
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("user_password"));
		user.setEmail(rs.getString("email"));
		user.setFirst_name(rs.getString("first_name"));
		user.setLast_name(rs.getString("last_name"));
		user.setAddress(rs.getString("address"));
		user.setPhone_number(rs.getString("phone_number"));
		user.setDate_of_birth(rs.getString("date_of_birth"));
		user.setGender(rs.getString("gender"));
		
		return user;
	}

}
