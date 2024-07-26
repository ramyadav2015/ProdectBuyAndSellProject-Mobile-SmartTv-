package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.entity.ProdectBean;

@Component
public class EditDao {

	@Autowired
	JdbcTemplate template;

	public int editDaoMethod(ProdectBean bean) {
		String query = "UPDATE prodect SET pr_name=?,pr_company=?,pr_type=?,pr_price=?,pr_image=?,pr_make_date=?,"
				+ "pr_expiry_date=?,pr_no=? WHERE sr_no =?";
		
		int result = template.update(query,bean.getName(),bean.getCompany(),bean.getType(),bean.getPrice(),bean.getImage(),
				bean.getMakeDate(),bean.getExpityDate(),bean.getProdectNo(),bean.getSrNo());
					
				
		return result;
	}

}
