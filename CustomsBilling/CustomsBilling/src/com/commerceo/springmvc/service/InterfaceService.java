package com.commerceo.springmvc.service;

import com.commerceo.springmvc.model.ContactusModel;
import com.commerceo.springmvc.model.LoginModel;
import com.commerceo.springmvc.model.SignupModel;

public interface InterfaceService {

	

	boolean service_signup(SignupModel signupModel);
	boolean service_contactUs(ContactusModel contactUs);
	boolean service_checklogin(LoginModel loginModel);


}
