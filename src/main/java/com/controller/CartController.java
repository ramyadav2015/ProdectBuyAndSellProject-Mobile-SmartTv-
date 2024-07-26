package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.entity.ProdectBean;
import com.service.AddCartService;

@Controller
public class CartController {

	
	@Autowired
	private AddCartService cartService;
	
	@GetMapping("/cartPage/{id}")
	public ModelAndView cartHendler(ModelAndView view,@PathVariable int id) {
		
		 // Add product to the cart using the service
		cartService.addCart(id);
       
		
        view.addObject("id", id);
            
		view.setViewName("redirect:/cart");
		return view;
		}
	
	//get card
	 	@GetMapping("/cart")
	    public String viewCart(Model model) {
	 		
	        model.addAttribute("cart", cartService.getCart());
	                
	        return "cart_page";
	    }
	 	
	//remove card 
	 	@GetMapping("/remove/{id}")
	    public String removeFromCart(@PathVariable int id) {
	        cartService.removeProduct(id);
	        
	        return "redirect:/cart";
	    }
	 	
	//clear cart 	
	 	@GetMapping("/clear")
	    public String clearCart(Model model) {
	 		
	        cartService.clearCart();	        
	        return "redirect:/cart";
	    }	 	
}
