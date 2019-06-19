package com.Action;

import com.DAO.PersonDaoImpl;
import com.po.Person;

public class AddAction {
	private String id;
	private String aihao;
	private String username;
	private String name;
	private String sex;
	private String qq;
	private String password;
	Person s=null;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAihao() {
		return aihao;
	}
	public void setAihao(String aihao) {
		this.aihao = aihao;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute() throws Exception {
		s=new Person(id,aihao,username,name,sex,qq,password);
		PersonDaoImpl stu=new PersonDaoImpl();
		stu.setDao(new PersonDaoImpl());
		stu.add(s);
		return "success";
	}
}
