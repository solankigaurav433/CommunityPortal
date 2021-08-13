package com.action;

import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.UserBean;

public class ProfileAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
private String email;
UserBean user;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public UserBean getUser() {
	return user;
}
public void setUser(UserBean user) {
	this.user = user;
}
public String execute() throws Exception {
	user = UserDao.getUserEmail(email);
	if (user!=null) {
		return "success";
	}else {
		return "error";
	}

}
}