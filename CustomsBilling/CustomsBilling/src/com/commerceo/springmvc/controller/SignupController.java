package com.commerceo.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.commerceo.springmvc.model.SignupModel;
import com.commerceo.springmvc.service.InterfaceService;

@Controller
public class SignupController {
	
	@Autowired
	private InterfaceService interfaceService;
	
	
	    
		@RequestMapping(value="/signup",method = RequestMethod.GET)
		public ModelAndView login(SignupModel signupModel){
			System.out.println("inside Signup");
			return new ModelAndView("signup","msg","Welcome to login page");
			
		}
		
		@RequestMapping(value="/signup",method=RequestMethod.POST)
		public ModelAndView first(HttpServletRequest request,HttpServletResponse response, 
				@ModelAttribute("signupModel") SignupModel signupModel)
		{
			
					ModelAndView mav =new ModelAndView();
			
			
			boolean bb=false;
			bb=interfaceService.service_signup(signupModel);
			
			String msg1="something went wrong";
			if(bb){
						
				 mav.setViewName("newprofile");
				 mav.addObject("firstname", signupModel.getFirstname());
				 mav.addObject("lastname", signupModel.getLastname());
				 mav.addObject("email", signupModel.getEmail());
				 mav.addObject("sex", signupModel.getSex());
				 mav.addObject("birthday", signupModel.getBirthday());
				 return mav;
		}else{
			return new ModelAndView("signup","msg",msg1);
		}
			}
		

	
}
