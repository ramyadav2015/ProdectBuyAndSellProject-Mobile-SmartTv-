package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class DeleteDao {

	@Autowired
	JdbcTemplate template;
	
	public int deleteData(int id) {
		
		String query = "DELETE FROM prodect WHERE sr_no = ?";
		int result = template.update(query, id);
		return result;
	}
}
