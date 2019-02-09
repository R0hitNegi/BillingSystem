package com.commerceo.springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.commerceo.springmvc.dao.InterfaceDao;
import com.commerceo.springmvc.domain.ContactUsDomain;
import com.commerceo.springmvc.domain.SignupDomain;
import com.commerceo.springmvc.model.ContactusModel;
import com.commerceo.springmvc.model.LoginModel;
import com.commerceo.springmvc.model.SignupModel;

@SuppressWarnings("unused")
@Service
public class ImlementationService implements InterfaceService {

	@Autowired
	private InterfaceDao interfaceDao;
	@Autowired
	private HttpSession httpSession;
	
	
	public ImlementationService() {	}

	
	public boolean service_checklogin(LoginModel loginModel) {
		System.out.println(" service_checklogin");
		boolean loginvalid=interfaceDao.dao_checklogin(loginModel);
		if(loginvalid) {
			httpSession.setAttribute("loginModel", loginModel );
			return true;
		}
		else{
			return false;
		}
	}
	
	@Override
	public boolean service_signup(SignupModel signupModel) {

		SignupDomain signupDomain = getdo(signupModel);

		return interfaceDao.dao_signup(signupDomain);
	}
	

	@Override
	public boolean service_contactUs(ContactusModel contactUs) {
		ContactUsDomain contactDomain = getContact(contactUs);

		return interfaceDao.dao_contactUs(contactDomain);
	}
	
	
	
	
	
	
	
	
	
	public SignupDomain getdo(SignupModel signupModel) {
		SignupDomain rd = new SignupDomain();

		rd.setFirstname(signupModel.getFirstname());
		rd.setLastname(signupModel.getLastname());
		rd.setEmail(signupModel.getEmail());
		rd.setPassword(signupModel.getPassword());
		rd.setBirthday(signupModel.getBirthday());
		rd.setSex(signupModel.getSex());

		return rd;
	}

	

	public ContactUsDomain getContact(ContactusModel contactUs) {
		ContactUsDomain cd = new ContactUsDomain();

		cd.setFname(contactUs.getFname());
		cd.setLname(contactUs.getLname());
		cd.setPhone(contactUs.getPhone());
		cd.setEmail(contactUs.getEmail());
		cd.setMessage(contactUs.getMessage());
	
		return cd;
	}


	
	
	

}
