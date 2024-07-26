package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.dao.User_login_dao;
import com.entity.User_login_bean;
import com.entity.User_register_bean;

@Component
public class User_login_Service {
	
	@Autowired
	User_login_dao dao;
	boolean result=false;
	
	public boolean logingService(User_register_bean userBean,HttpSession session) {
		
		List<User_register_bean> dbBean =  dao.loginDao();
		
		for(User_register_bean databaseBean : dbBean) {
			if(userBean.getUsername().equals(databaseBean.getUsername())&&userBean.getPassword().equals(databaseBean.getPassword())) {
			
				session.setAttribute("name", databaseBean.getFirst_name()+" "+databaseBean.getLast_name());
				result=true;
				break;
			}
		}
		return result;
	}

}
