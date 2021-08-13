package com.pojo;

public class UserBean {
	private int id;
	private String firstName;
	private String lastName;
	private String gender;
	private String address;
	private String number;
	private String city;
	private String country;
	private String profession;
	private String email;
	private String password;
	private String qualification;

	public UserBean(String firstName, String lastName, String gender, String address, String number, String city, String country, String profession, String email,
			String password, String qualification) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.address = address;
		this.number = number;
		this.city=city;
		this.country=country;
		this.profession=profession;
		this.email = email;
		this.password = password;
		this.qualification=qualification;
	}

	public UserBean() {
	}
	
	public int getId() {
		return id;
	}
	public void setId (int id) {
		this.id=id;
	}
	public  String getFirstName() {
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

		
		
}


