package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.pojo.UserBean;

public class UserDao {
	// get connection
	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			return DriverManager.getConnection(
					"jdbc:mysql://localhost/abcjob?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// Registration - sending data to data
	public int registerUser(String firstName, String lastName, String gender, String address, String number,
			String city, String country, String profession, String email, String password, String qualification)
			throws Exception {
		int i = 0;
		try {
			String sql = "INSERT INTO `user` (`id`, `firstName`, `lastName`, `gender`, `address`, `number`, `city`, `country`, `profession`, `email`, `password`, `qualification`) VALUES (NULL,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, gender);
			ps.setString(4, address);
			ps.setString(5, number);
			ps.setString(6, city);
			ps.setString(7, country);
			ps.setString(8, profession);
			ps.setString(9, email);
			ps.setString(10, password);
			ps.setString(11, qualification);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}

	}

	// Admin - report
	public ResultSet report() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT firstName,lastName,gender,address,number,city,country,profession,email,password,qualification FROM USER";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// search
	public ResultSet search(String value) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT firstName,lastName,gender,address,number,city,country,profession,email,password,qualification FROM USER where firstName=? or lastName=? or city=? or country=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, value);
			ps.setString(2, value);
			ps.setString(3, value);
			ps.setString(4, value);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// profile page
	public static UserBean getUserEmail(String email) throws Exception {
		UserBean user = null;

		String sql = "select * from user where email=?";
		PreparedStatement ps = getConnection().prepareStatement(sql);
		ps.setString(1, email);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			user = new UserBean();
			user.setFirstName(rs.getString(2));
			user.setLastName(rs.getString(3));
			user.setGender(rs.getString(4));
			user.setAddress(rs.getString(5));
			user.setNumber(rs.getString(6));
			user.setCity(rs.getString(7));
			user.setCountry(rs.getString(8));
			user.setProfession(rs.getString(9));
			user.setEmail(rs.getString(10));
			user.setPassword(rs.getString(11));
			user.setQualification(rs.getString(12));

		}

		return user;
	}

	// login
	public static UserBean validate(String email, String password) {
		UserBean user = null;
		PreparedStatement ps;

		try {
			String sql = "select * from user where email=? and password=?";
			 ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new UserBean();
				user.setFirstName(rs.getString(2));
				user.setLastName(rs.getString(3));
				user.setGender(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setNumber(rs.getString(6));
				user.setCity(rs.getString(7));
				user.setCountry(rs.getString(8));
				user.setProfession(rs.getString(9));
				user.setEmail(rs.getString(10));
				user.setPassword(rs.getString(11));
				user.setQualification(rs.getString(12));

			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}

	// forgot password
	public static UserBean validateEmail(String email) {
		UserBean user = null;

		try {
			String sql = "select * from user where email=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new UserBean();
				user.setFirstName(rs.getString(2));
				user.setLastName(rs.getString(3));
				user.setGender(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setNumber(rs.getString(6));
				user.setCity(rs.getString(7));
				user.setCountry(rs.getString(8));
				user.setProfession(rs.getString(9));
				user.setEmail(rs.getString(10));
				user.setPassword(rs.getString(11));
				user.setQualification(rs.getString(12));

			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}

	public ResultSet fetchUserDetails(String email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT firstName,lastName,gender,address,number,city,country,profession,email,password,qualification FROM USER WHERE email=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// Profile update - fetching data from database and updating it
	public int updateUserDetails(String firstName, String lastName, String address, String number, String city,
			String country, String profession, String email, String qualification) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "UPDATE USER SET firstName=?,lastName=?,address=?,number=?,city=?,country=?,profession=?,email=?,qualification=? WHERE email=?";

			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, address);
			ps.setString(4, number);
			ps.setString(5, city);
			ps.setString(6, country);
			ps.setString(7, profession);
			ps.setString(8, email);
			ps.setString(9, qualification);
			ps.setString(10, email);
			i = ps.executeUpdate();

			return i;
		} catch (Exception e) {
			e.printStackTrace();
			// getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// delete user
	public int deleteUserDetails(String email) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "DELETE FROM USER WHERE email=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

}
