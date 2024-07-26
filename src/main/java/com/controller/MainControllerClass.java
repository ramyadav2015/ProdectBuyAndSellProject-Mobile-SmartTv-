package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.ProdectBean;
import com.service.DeleteProdectService;
import com.service.ProdectReadServiceClass;

@Controller
public class MainControllerClass {
	
	@Autowired
	ProdectReadServiceClass readProdect;
	
	//mapping home page	
		@GetMapping("/home")
		public ModelAndView handler(ModelAndView view) {		
			
			List<ProdectBean> data =  readProdect.readService();
			view.addObject("prodectData", data);
			view.setViewName("home");
			return view;
		}
			
	
	//mepping buy prodect
	@GetMapping("/buyProduct")
	public ModelAndView buyHandler(ModelAndView view) {
		
		List<ProdectBean> data =  readProdect.readService();
		view.addObject("prodectData", data);
		view.setViewName("buy_product");		
		return view;
	}
	
	
	
	@GetMapping("/test")
	public String testhand() {
		
		return "test";
	}
	
	
	
	
	
	
	
	
}
