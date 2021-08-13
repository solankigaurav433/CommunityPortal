package com.action;
import java.sql.ResultSet;

import com.action.MailAction;
import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.UserBean;

public class ForgotPwdAction extends ActionSupport {
	private static final long serialVersionUID = 1L; 
	private String email;
	ResultSet rs = null;
	UserBean user;
	
	@Override
	public String execute() throws Exception {
		user = UserDao.validateEmail(email);
		if (user!= null) {
			MailAction.sendEmail(email,user.getFirstName(),user.getPassword());
			System.out.println("success");
			return "success";
		
		}else {
										
			return "error";
		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public ResultSet getRs() {
		return rs;
	}
	public void setRs(ResultSet rs) {
		this.rs = rs;
	}
	public UserBean getUser() {
		return user;
	}
	public void setUser(UserBean user) {
		this.user = user;
	}

}
