package com.mikatama.cp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mikatama.cp.service.ContentHowWorkService;
import com.mikatama.cp.service.OurCommitmentService;
import com.mikatama.cp.service.OurCultureService;
import com.mikatama.cp.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mikatama.cp.bean.OrderProduct;
import com.mikatama.cp.bean.Product;
import com.mikatama.cp.bean.ProductImage;
import com.mikatama.cp.bean.User;

@Controller
public class IndexController {

	@Autowired
	private OurCultureService ourCultureService;

	@Autowired
	private OurCommitmentService ourCommitmentService;
	
	@Autowired
	private ContentHowWorkService ourWorkService;

	@Autowired
	private ProductService productService;
	
	@RequestMapping({ "/", "/home" })
	public ModelAndView home() {
		ModelAndView view = new ModelAndView("home");

		return view;
	}

	@RequestMapping("/product")
	public ModelAndView catalog() {
		ModelAndView view = new ModelAndView("product");
		view.addObject("productList", productService.getProductList());

		return view;
	}

	@RequestMapping("/culture")
	public ModelAndView culture() {
		ModelAndView view = new ModelAndView("culture");
		view.addObject("ourCultures", ourCultureService.getContentCulture());
		view.addObject("ourCommitments", ourCommitmentService.getCommitmentContent());

		return view;
	}

	@RequestMapping("/how_we_work")
	public ModelAndView howWeWork() {
		ModelAndView view = new ModelAndView("how_we_work");
		view.addObject("ouwWorks", ourWorkService.getContentHowWork());

		return view;
	}
	
	@RequestMapping(value= "/login", method = RequestMethod.GET)
	public ModelAndView test(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("userLogin") User user) {
		ModelAndView modelAndView = new ModelAndView("login");
		
			modelAndView.addObject(
					"userDetail",
					(User) request.getSession().getAttribute(
							"userSession"));
		
		
		return modelAndView;
	}
	
	@RequestMapping("/dashboard")
	public ModelAndView dashboard(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("dashboard");
		
		if(request.getSession().getAttribute("userSession")==null){
        	return mv = new ModelAndView("redirect:/login");
        }
		
		return mv;
	}
	
	@GetMapping(value="detail")
	public ModelAndView detailProduct(HttpServletRequest request, @RequestParam(value="id", required=true) String id,
			@ModelAttribute("orderProcess") OrderProduct orderProcess){
		ModelAndView view = new ModelAndView("product_detail");
		List<ProductImage> lists = productService.getProductImageListByProductId(Integer.parseInt(id));
		view.addObject("moreProducts", productService.getRandomProductByLimit(5));
		view.addObject("productImage", lists);
		view.addObject("product", productService.getProductById(Integer.parseInt(id)));
		return view;
	}
	
	@GetMapping(value="contact")
	public ModelAndView contactUs(HttpServletRequest request, HttpServletResponse response){
		ModelAndView view = new ModelAndView("contactUs");
		return view;
	}

}
