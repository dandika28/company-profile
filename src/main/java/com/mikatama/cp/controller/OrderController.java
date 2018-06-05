package com.mikatama.cp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mikatama.cp.bean.OrderProcess;
import com.mikatama.cp.bean.Product;
import com.mikatama.cp.service.OrderProcessService;
import com.mikatama.cp.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	OrderProcessService orderService;
	
	@Autowired
	ProductService productService;

	@PostMapping("/order")
	public ModelAndView postOrderProduct(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("orderProcess") OrderProcess orderProcess, BindingResult bindingResult){
		
		ModelAndView modelAndView = new ModelAndView("orderProduct");
		
		return modelAndView;
	}
	
	@PostMapping("/confirmation")
	public ModelAndView confirmationOrderProduct(HttpServletRequest request, HttpServletResponse response, 
			@ModelAttribute("orderProcess") OrderProcess orderProcess, BindingResult bindingResult){
		
		ModelAndView modelAndView = new ModelAndView();
		
		//check availibilty product stock
		Product product = productService.getProductById(Integer.parseInt(orderProcess.getProductId()));
		
		if(product.getStock() > 0){
			if(product.getStock()>=orderProcess.getTotal()){
				boolean insertStatus = orderService.insertOrder(orderProcess);
				boolean getStockProduct = productService.amountStockProduct(orderProcess.getTotal(), product.getId());
				modelAndView = new ModelAndView("confirmation");
				if(insertStatus==true && getStockProduct==true){
		    		modelAndView.addObject("success", 1);
				}else{
					modelAndView.addObject("success", 2);
				}
			}else{
				modelAndView.addObject("success", 3);
			}
		}else{
			modelAndView.addObject("success", 3);
		}
		return modelAndView;
	}
	
}
