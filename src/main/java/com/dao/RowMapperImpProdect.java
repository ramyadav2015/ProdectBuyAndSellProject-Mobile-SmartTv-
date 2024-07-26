package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.entity.ProdectBean;
import com.service.ProdectReadServiceClass;


public class RowMapperImpProdect implements RowMapper<ProdectBean> {
  
    public ProdectBean mapRow(ResultSet rs, int rowNum) throws SQLException {
    	ProdectBean prodect = new ProdectBean();
		
    	prodect.setSrNo(rs.getLong("sr_no"));
    	prodect.setName(rs.getString("pr_name"));
    	prodect.setCompany(rs.getString("pr_company"));
    	prodect.setType(rs.getString("pr_type"));
    	prodect.setPrice(rs.getString("pr_price"));
    	prodect.setImage(rs.getString("pr_image"));
    	prodect.setMakeDate(rs.getString("pr_make_date"));
    	prodect.setExpityDate(rs.getString("pr_expiry_date"));
    	prodect.setProdectNo(rs.getString("pr_no"));
    	prodect.setAbout(rs.getString("pr_about"));
    	
    	
		return prodect;
    }
}
