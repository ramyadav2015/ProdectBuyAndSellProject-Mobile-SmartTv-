package com.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.CartDao;
import com.entity.ProdectBean;
import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

@Component
public class AddCartService {
	
	// create map in cart and cart data
	 private Map<Integer, Integer> cart = new HashMap<Integer, Integer>();
	 private Map<Integer, ProdectBean> cartData = new HashMap<Integer,ProdectBean>();
	 
	 @Autowired
	 CartDao dao;
	
	public void addCart(int Pro_id) {
		cart.put(Pro_id, cart.getOrDefault(Pro_id, 0) + 1);
		
	}
	
	
	public Map<Integer,ProdectBean> getCart() {
		
		cartData = dao.getCartData(cart,cartData);
		
        return cartData;
    }
	
	public void removeProduct(int Pro_id) {
		
        cart.remove(Pro_id);
        cartData.remove(Pro_id);
    }
	
	public void clearCart() {
        cart.clear();
        cartData.clear();
       
    }

}	
