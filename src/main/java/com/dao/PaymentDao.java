package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.entity.ProdectBean;

@Component
public class PaymentDao {
	
	@Autowired
	private JdbcTemplate template;
	
	
	public ProdectBean getdao(int id) {
		
		String queary = "select * from prodect where sr_no=?";
		
		ProdectBean data = template.queryForObject(queary,new RowMapperImpProdect(),id);
		
		return data;
	}

}
