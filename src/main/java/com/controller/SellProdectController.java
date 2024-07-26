package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.entity.ProdectBean;
import com.entity.User_register_bean;
import com.service.ProdectReadServiceClass;
import com.service.SellServiceClass;
import com.service.User_login_Service;


@Controller
public class SellProdectController {
	
	@Autowired
	SellServiceClass serviceClass;
	
	@Autowired
	User_login_Service loginService;
	
	@Autowired
	ProdectReadServiceClass readProdect;
	
	
	@GetMapping("/seller-login-form")
	public ModelAndView loginformHandler(ModelAndView view, HttpSession session) {
		
		if(session.getAttribute("name")==null) {	
			view.setViewName("seller_login_form");
		}
		else {
			view.setViewName("sell_prodect");
		}
		return view;
	}
		
	@PostMapping("/seller-login-submit")
	public ModelAndView loginHnaler(ModelAndView view, @ModelAttribute User_register_bean bean,Model model,HttpSession session) {
		
		boolean result = loginService.logingService(bean,session);
		if(result) {
			view.setViewName("sell_prodect");
		}
		else {
			view.setViewName("redirect:/error");
		}
		return view;
	}
	
	
	@PostMapping("/sell_submit")
	public ModelAndView sellHandler(@ModelAttribute ProdectBean bean,@RequestParam("imageFile") MultipartFile file, ModelAndView view) {
		
		System.out.println(bean);
		int result = serviceClass.sellprodect( bean,file);
		
		if(result==1) {
			List<ProdectBean> data =  readProdect.readService();
			view.addObject("prodectData", data);
			view.setViewName("redirect:/buyProduct");
		}
		else {
			view.setViewName("redirect:/error");
		}
		return view;
	}
}
