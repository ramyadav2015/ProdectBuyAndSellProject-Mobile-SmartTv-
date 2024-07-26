package com.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.User_login_bean;
import com.entity.User_register_bean;
import com.service.User_login_Service;
import com.service.User_register_service;

@Controller
public class user_controller {
	
	@Autowired
	User_register_service registerSerive;
	
	@Autowired
	User_login_Service loginService;

//user registration
	
	
	
	@GetMapping("/user-Register-forms")
	public ModelAndView registerFormHandler(ModelAndView view) {	
		
			view.setViewName("user_register");
		return view;
	}
	
	@GetMapping("/user-register-submit")
	public ModelAndView registerHandler(ModelAndView view, @ModelAttribute User_register_bean bean) {
		
		int result = registerSerive.userRegister(bean);
		if(result==1) {
			view.setViewName("redirect:/home");
		}
		else {
			 view.setViewName("redirect:/error");
		}
		return view;
	}
	
	
	
	
	
//user Loging
	
	@GetMapping("/user-login-form")
	public ModelAndView loginformHandler(ModelAndView view, HttpSession session) {
		
		if(session.getAttribute("name")==null) {	
			view.setViewName("loginForm");
		}
		else {
			view.setViewName("redirect:/buyProduct");
		}
		return view;
	}
	
	@PostMapping("/user-login-submit")
	public ModelAndView loginHnaler(ModelAndView view, @ModelAttribute User_register_bean bean,Model model,HttpSession session,PrintWriter out) {
		
		boolean result = loginService.logingService(bean,session);
		if(result) {
			
			
			view.setViewName("redirect:/buyProduct");
		}
		else {
		           view.setViewName("redirect:/error");
		}
		return view;
	}
	
	
	
	@GetMapping("/error")
	public String errorHandler() {
		
		return "error";
	}
	

}
