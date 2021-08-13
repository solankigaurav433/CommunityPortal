package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.UserBean;

public class SearchAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	ResultSet rs = null;
	UserBean bean = null;
	List<UserBean> beanList = null;
	UserDao user = new UserDao();
	private boolean noData = false;
	String search="";
	
	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	@Override
	public String execute() throws Exception {
		try {
			beanList = new ArrayList<UserBean>();
			rs = user.search(search);
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new UserBean();
					bean.setId(i);
					bean.setFirstName(rs.getString("firstName"));
					bean.setLastName(rs.getString("lastName"));
					bean.setGender(rs.getString("gender"));
					bean.setAddress(rs.getString("address"));
					bean.setNumber(rs.getString("number"));
					bean.setCity(rs.getString("city"));
					bean.setCountry(rs.getString("country"));
					bean.setProfession(rs.getString("profession"));
					bean.setEmail(rs.getString("email"));
					bean.setPassword(rs.getString("password").replaceAll("(?s).", "*"));
					bean.setQualification(rs.getString("qualification"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "REPORT";
	}

	public boolean isNoData() {
		return noData;
	}
	public void setNoData(boolean noData) {
		this.noData = noData;
	}
	public List<UserBean> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<UserBean> beanList) {
		this.beanList = beanList;
	}


}
