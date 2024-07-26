package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.DaoReadClass;
import com.entity.ProdectBean;

@Component
public class ProdectReadServiceClass {
	
	@Autowired
	DaoReadClass daoRead;
	
	public List<ProdectBean> readService(){
		
		List<ProdectBean> readData = daoRead.daoRead();
		
		 return readData;
	}

}
