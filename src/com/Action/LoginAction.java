package com.Action;

import com.DAO.PersonDaoImpl;

public class LoginAction {
	private String user;
	private String password;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute() throws Exception {
		PersonDaoImpl dao=new PersonDaoImpl();
		dao.setDao(new PersonDaoImpl());
		boolean flag=dao.login(user, password);
		if(flag) {
			return "success";
		}
		else {
			return "fail";
		}
	}
}