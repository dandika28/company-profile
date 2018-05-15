package com.mikatama.cp.controller;

import com.mikatama.cp.bean.User;
import com.mikatama.cp.service.OurCultureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class OurCultureController {

    @Autowired
    private OurCultureService ourCultureService;

    @RequestMapping(value = "/ourCulture", method = RequestMethod.GET)
    public ModelAndView test(HttpServletRequest request, HttpServletResponse response,
                             @ModelAttribute("userLogin") User user) {

        ModelAndView modelAndView = new ModelAndView("ourCulture");

        modelAndView.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
        modelAndView.addObject("ourCultures", ourCultureService.getOurCulture());

        return modelAndView;
    }
}
