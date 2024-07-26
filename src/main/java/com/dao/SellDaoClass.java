package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.entity.ProdectBean;

@Repository
public class SellDaoClass {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public int sellDao(ProdectBean bean) {
		
		String query = "insert into prodect (pr_name, pr_company, pr_type, pr_price, pr_image, pr_make_date, pr_expiry_date, pr_no) values(?,?,?,?,?,?,?,?)";
		
		int result = jdbcTemplate.update(query,bean.getName(),bean.getCompany(),bean.getType(),bean.getPrice(),bean.getImage(),bean.getMakeDate(),bean.getExpityDate(),bean.getProdectNo());
		
		return result;
	}
}
