package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.entity.ProdectBean;
import com.service.DeleteProdectService;
import com.service.ProdectReadServiceClass;

@Controller
public class DeleteController {

	@Autowired
	DeleteProdectService service;
	
	@Autowired
	ProdectReadServiceClass readProdect;
	
	@GetMapping("/deleteProduct/{id}")
	public ModelAndView editHandler(ModelAndView view,@PathVariable("id") int id) throws IOException {
			
		int result = service.delete(id);
		if(result==1) {
			List<ProdectBean> data =  readProdect.readService();
			view.addObject("prodectData", data);
			
			view.setViewName("redirect:/officelogin");
			
		}
		return view;
		
	}
}
