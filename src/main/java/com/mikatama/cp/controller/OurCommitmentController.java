package com.mikatama.cp.controller;

import com.mikatama.cp.bean.User;
import com.mikatama.cp.service.OurCommitmentService;
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
public class OurCommitmentController {

    @Autowired
    private OurCommitmentService ourCommitmentService;

    @RequestMapping(value = "/ourCommitment", method = RequestMethod.GET)
    public ModelAndView getOurCommitment(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("ourCommitment");

        modelAndView.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
        modelAndView.addObject("ourCommitments", ourCommitmentService.getOurCommitments());

        return modelAndView;
    }
}
