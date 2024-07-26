package com.service;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.dao.Admin_login_dao;
import com.entity.Admin_login_bean;

@Component
public class Admin_login_service {
	
	@Autowired
	Admin_login_dao dao;
	
	public boolean adminService(Admin_login_bean adminBean,HttpSession session) {
	    boolean result = false ;
	    List<Admin_login_bean> dbBean = dao.adminDao();
	    
	    for (Admin_login_bean databaseBean : dbBean) {
	        if (databaseBean.getUsername().equals(adminBean.getUsername())&&databaseBean.getAdmin_password().equals(adminBean.getAdmin_password())) {

	        	session.setAttribute("name", databaseBean.getFirst_name()+" "+databaseBean.getLast_name());
	            result = true;
	            break; 
	        }
	    }
	    
	    return result;
	}

}
