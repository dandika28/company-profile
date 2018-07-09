package com.mikatama.cp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(MultipartException.class)
	public ModelAndView handlerError1(MultipartException e, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView = new ModelAndView("errorMaxUpload");
		modelAndView.addObject("success", 3);
		return modelAndView;
	}
	
	@ExceptionHandler(MaxUploadSizeExceededException.class)
    public ModelAndView handleError2(MaxUploadSizeExceededException e,HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("redirect:/");

    }
}
