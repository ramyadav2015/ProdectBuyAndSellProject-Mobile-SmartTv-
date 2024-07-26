package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Admin_login_bean;
import com.entity.ProdectBean;
import com.service.Admin_login_service;
import com.service.ProdectReadServiceClass;

@Controller
public class AdminController {
	
	@Autowired
	Admin_login_service admin_service;
	
	@Autowired
	ProdectReadServiceClass readProdect;
	
	
//mepping admin Login 	
	@GetMapping("/officelogin")
	public ModelAndView officehender(ModelAndView view) {
			
		List<ProdectBean> data =  readProdect.readService();
		view.addObject("prodectData", data);
		view.setViewName("office_login");
			
		return view;
	}

//admin loging form
	@GetMapping("/admin_login_form")
	public ModelAndView adminForm(ModelAndView view) {
		
		
			view.setViewName("admin_login_popup");
	
		return view;
	}

//admin loging sumbit
	@PostMapping("/admin-login-submit")
	public ModelAndView adminLogin(ModelAndView view,@ModelAttribute Admin_login_bean adminBean,HttpSession session) {
		
	
		boolean result = admin_service.adminService(adminBean,session);
		
		if(result==true) {
			view.setViewName("redirect:/officelogin");
		}
		else {
			 view.setViewName("redirect:/error");
		}
		return view;
	}
	

//logout page
	@GetMapping("/logout")
	public ModelAndView adminLogOut(ModelAndView view,HttpSession session) {
		
		if (session != null) {
            session.invalidate();
        }
		
		view.setViewName("redirect:/home");
		return view;
	}
	
	

}
