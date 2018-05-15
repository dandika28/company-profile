package com.mikatama.cp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mikatama.cp.service.OurCultureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mikatama.cp.bean.User;

@Controller
public class IndexController {

	@Autowired
	private OurCultureService ourCultureService;

	@RequestMapping({ "/", "/home" })
	public ModelAndView home() {
		ModelAndView view = new ModelAndView("home");

		return view;
	}

	@RequestMapping("/product")
	public ModelAndView catalog() {
		ModelAndView view = new ModelAndView("product");

		return view;
	}

	@RequestMapping("/culture")
	public ModelAndView culture() {
		ModelAndView view = new ModelAndView("culture");
		view.addObject("ourCultures", ourCultureService.getOurCulture());

		return view;
	}

	@RequestMapping("/how_we_work")
	public ModelAndView howWeWork() {
		ModelAndView view = new ModelAndView("how_we_work");

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
	public ModelAndView dashboard() {
		ModelAndView mv = new ModelAndView("dashboard");
		return mv;
	}

}
