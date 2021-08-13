package com.action;

import java.sql.ResultSet;

import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.UserBean;

public class AdminAction extends  ActionSupport{
	private static final long serialVersionUID = 1L;
	private String email, password;
	private String msg= "";
	ResultSet rs = null;
	UserBean user;
	@Override
	public String execute() throws Exception {
			user = UserDao.validate(email, password);
			if ((("Admin".equals(getEmail()) && ("Lithan123".equals(getPassword()))))){
				return "success";
			
			}else {
				msg = "Login Again";
				return "error";
			}
		}
	public String getEmail() {
		return email;
	}
	public UserBean getUser() {
		return user;
	}
	public void setUser(UserBean user) {
		this.user= user;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
}

