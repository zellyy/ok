package com.Action;

import java.util.List;

import com.DAO.PersonDaoImpl;
import com.po.Person;

public class SelectByNameAction {
	private List<Person> list;
	public List<Person> getList() {
		return list;
	}
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		PersonDaoImpl stu=new PersonDaoImpl();
		stu.setDao(new PersonDaoImpl());
		list=stu.selectByname(name);
		return "success";
	}
}
