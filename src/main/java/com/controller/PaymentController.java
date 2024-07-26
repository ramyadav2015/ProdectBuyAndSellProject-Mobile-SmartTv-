package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.entity.ProdectBean;
import com.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService service;
	
	
	
// payment page mapping		
	@GetMapping("/payment/{id}")
	public ModelAndView buyHandler(ModelAndView view, @PathVariable int id, HttpSession session ) {		
		
		session.setAttribute("productpay", service.paymentdata(id));
		
		view.setViewName("redirect:/getpayment");		
		return view;
	}
	
	@GetMapping("/getpayment")
	public ModelAndView payHandler(ModelAndView view) {
		
		view.setViewName("payment_product");
		return view;
	}
	
	
//success pament page
	@GetMapping("/success_link")
	public ModelAndView sucessHandler(ModelAndView view) {
		
		
		view.setViewName("redirect:/success");
		return view;
	}
	
	@GetMapping("/success")
	public ModelAndView suceHandler(ModelAndView view) {
		
		
		view.setViewName("success_payment");
		return view;
	}
	
	
	
	
	

}
