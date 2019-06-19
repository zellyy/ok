package com.structs.action;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.structs.dao.DAO;
import com.structs.javabean.User;

public class UserLoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 772659957114692367L;
	private DAO dao = new DAO();
	private String sql;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String userlogin() {
		ResultSet rs = null;
		String password = null;
		sql = "select * from sheet1 where id = " + "'" + user.getId() + "'";
		System.out.println(user.getId());
		rs = dao.executeQuery(sql);
		try {
			if (rs.next()) {
				password = rs.getString(2);
				if (user.getPassword().equals(password)) {
					System.out.println(user.getId());
					user.setAihao(rs.getString(3));
					user.setUsername(rs.getString(4));
					return "success";
				} else {
					System.out.println("密码错误");
					return "User_password_error";
				}
			} else {
				System.out.println("ID错误");
				return "User_id_error";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}
}
