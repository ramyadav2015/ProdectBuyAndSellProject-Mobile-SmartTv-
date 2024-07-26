package com.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.entity.ProdectBean;
import com.service.EditProdectService;
import com.service.ProdectReadServiceClass;

@Controller
public class EditController {
	
	@Autowired
	ProdectReadServiceClass readProdect;
	
	@Autowired
	EditProdectService editService;
	
	@GetMapping("/editProduct")
	public ModelAndView editHandler(ModelAndView view) {
		
		List<ProdectBean> data =  readProdect.readService();
		view.addObject("prodectData", data);
		view.setViewName("edit_prodect");
		return view;
	}
	
	
	@PostMapping("/editItem")
	public ModelAndView updateHandler(@ModelAttribute ProdectBean bean, @RequestParam("fileImage") MultipartFile file, ModelAndView view ) {
		
		
		int result=0;
		
		try {
			result = editService.editservice(bean,file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result==1) {
			List<ProdectBean> data =  readProdect.readService();
			view.addObject("prodectData", data);
			view.setViewName("office_login");
		}
		else {
			view.setViewName("redirect:/error");
		}
		
		return view;
	}
	
	
	

}
