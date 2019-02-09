package com.commerceo.springmvc.dao;

import com.commerceo.springmvc.domain.ContactUsDomain;
import com.commerceo.springmvc.domain.SignupDomain;
import com.commerceo.springmvc.model.ContactusModel;
import com.commerceo.springmvc.model.LoginModel;

@SuppressWarnings("unused")
public interface InterfaceDao {

	

	boolean dao_signup(SignupDomain signupDomain);
	boolean dao_contactUs(ContactUsDomain contactDomain);
	boolean dao_checklogin(LoginModel loginModel);

}
