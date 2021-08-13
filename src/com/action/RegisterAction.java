package com.action;
import com.action.RegConMail;
import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private String firstName, lastName, gender, address, number, city, country, profession, email, password, qualification;
	private String msg= "";
	UserDao user = null;
	int ctr = 0;

	@Override
	public String execute() throws Exception {
		user = new UserDao();
		try {
			ctr = user.registerUser(firstName, lastName, gender, address, number, city, country, profession, email, password, qualification);
			if (ctr > 0) {
				RegConMail.sendRegEmail(email,firstName);
				msg = "Thankyou for your Registration";
			} else {
				msg = "Some error";
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "REGISTER";
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

	public UserDao getUser() {
		return user;
	}

	public void setUser(UserDao user) {
		this.user = user;
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

	public String getGender() {
		return gender;
	}
	public void setGender (String gender) {
		this.gender=gender;
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
	public String getPassword() {
		return password;
	}
	public void setPassword (String password) {
		this.password=password;
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
	public int getCtr() {
		return ctr;
	}
	public void setCtr(int ctr) {
		this.ctr = ctr;
	}
}







