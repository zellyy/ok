package com.Action;

import java.util.List;

import com.DAO.PersonDaoImpl;
import com.po.Person;
public class DisplayAction {
	private List<Person> list;
	public List<Person> getList() {
		return list;
	}
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		PersonDaoImpl ss=new PersonDaoImpl();
		ss.setDao(new PersonDaoImpl());
		list=ss.selectAll();
		return "success";
	}
}
