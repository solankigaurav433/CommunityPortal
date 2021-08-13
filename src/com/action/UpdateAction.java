package com.action;

import java.sql.ResultSet;

import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private  String firstName = "", lastName = "", address = "", number = "", city= "", country= "", profession ="", email = "", qualification = "", emailhidden="";
	private String msg= "";
	ResultSet rs = null;
	UserDao dao = new UserDao();
	String submitType;
	

	@Override
	public String execute() throws Exception {
		try {
			if (submitType.equals("updatedata")) {
				rs = dao.fetchUserDetails(email.trim());
				if (rs != null) {
					while (rs.next()) {
						firstName = rs.getString("firstName");
						lastName = rs.getString("lastName");
						address = rs.getString("address");
						number = rs.getString("number");
						city = rs.getString("city");
						country = rs.getString("country");
						profession = rs.getString("profession");
						email = rs.getString("email");
						qualification = rs.getString("qualification");
					}
				}
			} else {
		
				int i = dao.updateUserDetails(firstName, lastName, address, number, city, country, profession, email, qualification);
				
				if (i > 0) {
				
					return "success";
				
				} else {
					msg = "error";
				}
				
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "UPDATE";
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName (String firstName) {
		this.firstName=firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName (String lastName) {
		this.lastName=lastName;
	}

	
	public String getAddress() {
		return address;
	}
	public void setAddress (String address) {
		this.address=address;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber (String number) {
		this.number=number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail (String email) {
		this.email=email;
	}
	
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification=qualification;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getSubmitType() {
		return submitType;
	}
	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}

	public String getEmailhidden() {
		return emailhidden;
	}

	public void setEmailhidden(String emailhidden) {
		this.emailhidden = emailhidden;
	}

	
	}


