package com.mikatama.cp.controller;

import com.mikatama.cp.bean.User;
import com.mikatama.cp.service.UserLoginService;
import com.mikatama.cp.util.HashSalt;
import com.mikatama.cp.util.PasswordGenerateUtil;
import com.mikatama.cp.util.PasswordSalt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@Controller
public class LoginController {

	Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	UserLoginService userLoginService;	

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("userLogin") User user, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();
		
		System.out.println("Username: " + user.getUsername());

		User userDetail = userLoginService.getUserByUsername(user.getUsername());
		if (userDetail == null) {
			bindingResult.rejectValue("notification", "login.username.password.incorrect");
			modelAndView = new ModelAndView("login");
			return modelAndView;
		} else {
			if (StringUtils.isEmpty(userDetail.getSalt())) {
				if (userDetail.getPassword().equals(user.getPassword())) {
					modelAndView = new ModelAndView("dashboard");

					request.getSession().setAttribute("userSession", userDetail);

					try {
						HashSalt hashSalt = PasswordGenerateUtil.createNewHashWithSalt(user.getPassword());
						userLoginService.updatePassword(hashSalt.getHash(), hashSalt.getSalt(), user.getId());
					} catch (NoSuchAlgorithmException e) {
						logger.error("Error :: ", e);
					} catch (InvalidKeySpecException e) {
						logger.error("Error :: ", e);
					}

					return modelAndView;
				} else {
					bindingResult.rejectValue("notification", "login.username.password.incorrect");
					modelAndView = new ModelAndView("login");
				}

			} else {
				if(authenticateUser(userDetail, user.getPassword())){
					modelAndView = new ModelAndView("dashboard");
					
					request.getSession().setAttribute("userSession", userDetail);
					
					return modelAndView;
				}else{
					bindingResult.rejectValue("notification",
							"login.username.password.incorrect");
					modelAndView = new ModelAndView("login");
				}
			}

		}

		modelAndView = new ModelAndView("login");
		return modelAndView;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {

		if (httpServletRequest.getSession().getAttribute("userSession") != null) {
			httpServletRequest.getSession().invalidate();
		}

		return "redirect:/";
	}
	
	private boolean authenticateUser(User user, String plainPassword) {

		String hash = "";
		try {
			hash = PasswordGenerateUtil.hashPassword(new PasswordSalt(user
					.getSalt(), plainPassword));
		} catch (NoSuchAlgorithmException e) {
			logger.error("Error :: ", e);
			return false;
		} catch (InvalidKeySpecException e) {
			logger.error("Error :: ", e);
			return false;
		}

		if (user.getPassword().equals(hash))
			return true;
		else
			return false;

	}
}
