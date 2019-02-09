package com.commerceo.springmvc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.commerceo.springmvc.domain.ContactUsDomain;
import com.commerceo.springmvc.domain.SignupDomain;
import com.commerceo.springmvc.model.LoginModel;


@SuppressWarnings("unused")
@Component
public class ImplementationDao implements InterfaceDao {
	
	@Autowired
	private HibernateTemplate template;
	
	public ImplementationDao() {
		// TODO Auto-generated constructor stub
	}
	

	@Override
//	public boolean checklogin(String email,String pass){
	public boolean dao_checklogin(LoginModel loginModel){
		
		String email=loginModel.getUsername();
		String pass=loginModel.getPassword();
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/db","root","");  
			 
			Statement stmt=con.createStatement(); 
			String query="select * from registeruser where email='"+email+"' and password='"+pass+"'";
			ResultSet rs=stmt.executeQuery(query); 
			System.out.println("inside dao imlementation checklogin");
			if (rs.next()) {
			while(rs.next()) {
				System.out.println("1");
			System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
			
			} }
			else {System.out.println("2"); con.close(); return false;}
			con.close();
			
			}catch(Exception e)
		{ System.out.println(e);
		}  
	
		return true;
	}
	
	public boolean dao_signup(SignupDomain signupDomain) {
		
		
		template.save(signupDomain);
		return true;
	}
	
	/*public boolean addContactData(ContactUs contactUs){
		template.save(contactUs);
		return true;
	}
*/
	@Override
	public boolean dao_contactUs(ContactUsDomain contactDomain) {
		// TODO Auto-generated method stub
		template.save(contactDomain);
		//template.persist(entity);
		return true;
	}
	
	
}
