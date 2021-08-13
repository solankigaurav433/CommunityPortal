package com.action;

import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	String email, msg;
	UserDao user= new UserDao();

	@Override
	public String execute() throws Exception {
		try {
			int isDeleted = user.deleteUserDetails(email);
			if (isDeleted > 0) {
				msg = "Record deleted successfully";
			} else {
				msg = "Some error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "DELETE";
	}

	public String getEmail() {
		return email;
	}
	public void setEmail (String email) {
		this.email=email;
	}
	public String getMsg() {
		return msg;
		}
		public void setMsg(String msg) {
		this.msg = msg;
}
}	
