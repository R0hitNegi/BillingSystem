package com.commerceo.springmvc.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.commerceo.springmvc.dao.InterfaceDao;
import com.commerceo.springmvc.model.ContactusModel;
import com.commerceo.springmvc.model.SignupModel;
import com.commerceo.springmvc.service.InterfaceService;

@Controller
public class CommonController {
	@Autowired
	private InterfaceService interfaceService;
	@SuppressWarnings("unused")
	@Autowired
	private InterfaceDao interfaceDao;

	@Autowired
	ServletContext servletContext;

	public CommonController() {
		// TODO Auto-generated constructor stub
	}

		// index
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public ModelAndView index1() {
			return new ModelAndView("index", "msg", "message");
		}
		
		// index
	    @RequestMapping(value = "/index", method = RequestMethod.GET)
	    public ModelAndView index2() {
		return new ModelAndView("index", "msg", "message");
	    }
	
	    // index
		@RequestMapping(value = "/home", method = RequestMethod.GET)
		public ModelAndView index3() {
			return new ModelAndView("index", "msg", "message");
		}
		

	// contactus
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public ModelAndView contactPage(ContactusModel contactUs) {
		return new ModelAndView("contactus", "msg", "message");
	}

	// savecontactus
	@RequestMapping(value = "/contactussave", method = RequestMethod.POST)
	public ModelAndView contactUs(@ModelAttribute("contactUs") ContactusModel contactUs) {

		boolean bb = false;
		bb = interfaceService.service_contactUs(contactUs);

		String msg = "Successfully Contact Sent";
		String msg1 = "something went wrong try again later";
		if (bb) {
			return new ModelAndView("sucreg", "msg", msg);
		} else {
			return new ModelAndView("failure", "msg", msg1);
		}
	}

	// aboutus
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public ModelAndView aboutusPage() {
		return new ModelAndView("aboutus", "msg", "aboutus page...");
	}

	// search
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search() {
		return new ModelAndView("search", "msg", "aboutus page...");
	}

	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public ModelAndView third1(@ModelAttribute("signupModel") SignupModel signupModel) {
		System.out.println("inside /reg");
		String i = signupModel.getEmail();
		String j = signupModel.getPassword();

		System.out.println(i);
		System.out.println(j);

		if (i.equals("") && j.equals("")) {
			return new ModelAndView("success", "msg", "success");
		} else {
			return new ModelAndView("failure", "msg", "failure");
		}

	}

	@RequestMapping(value = "/save", method = RequestMethod.GET)
	public ModelAndView forth(SignupModel signupModel) {
		return new ModelAndView("regpage", "msg", "please fill all the details");
	}

	@RequestMapping(value = "/dude", method = RequestMethod.POST)
	public ModelAndView first(@ModelAttribute("signupModel") SignupModel signupModel) {

		boolean bb = false;
		bb = interfaceService.service_signup(signupModel);

		String msg = "you have succesfully registered kindly login to continue";
		String msg1 = "something went wrong";
		if (bb) {
			return new ModelAndView("index", "msg", msg);
		} else {
			return new ModelAndView("failure", "msg", msg1);
		}
	}

}
