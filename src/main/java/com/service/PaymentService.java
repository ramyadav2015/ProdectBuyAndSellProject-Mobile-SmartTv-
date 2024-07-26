package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.PaymentDao;
import com.entity.ProdectBean;

@Component
public class PaymentService {
	
	@Autowired
	private PaymentDao dao;
	
	public ProdectBean paymentdata(int id) {
		
		return dao.getdao(id);
	}

}
