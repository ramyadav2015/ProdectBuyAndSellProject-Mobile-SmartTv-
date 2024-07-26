package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.entity.ProdectBean;

@Repository
public class DaoReadClass {
	
	@Autowired
	JdbcTemplate template;
	
	public List<ProdectBean> daoRead(){
		
		String queary = "select * from prodect";
		
		List<ProdectBean> data = template.query(queary,new RowMapperImpProdect());
		
		return data;
	}

}
