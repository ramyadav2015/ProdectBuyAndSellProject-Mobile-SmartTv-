package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.DeleteDao;

@Component
public class DeleteProdectService {
	
	@Autowired
	DeleteDao dao;
	
	public int delete(int id) {
		
		int result = dao.deleteData(id);
	
		return result;
	}
}
