package com.dao;

import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.entity.ProdectBean;

@Component
public class CartDao {
	
	@Autowired
	JdbcTemplate template;
	
	public Map<Integer, ProdectBean> getCartData(Map<Integer, Integer> cart, Map<Integer, ProdectBean> cartData) {
        for (Entry<Integer, Integer> entry : cart.entrySet()) {
            Integer cartId = entry.getKey();
            
            String query = "select * from prodect where sr_no=?";
            ProdectBean bean = template.queryForObject(query, new RowMapperImpProdect(), cartId);
            
            // Process the cart data as needed
            cartData.put(cartId, bean);
        }
        
        return cartData;
    }

}
