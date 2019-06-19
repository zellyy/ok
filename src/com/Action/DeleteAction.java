package com.Action;

import com.DAO.PersonDaoImpl;
import com.po.Person;

public class DeleteAction {
	Person s=null;
	private String id;
	public void setId(String id) {
		this.id=id;
	}
	public String getId() {
		return id;
	}
	public String execute() throws Exception {
		s=new Person();
		s.setId(id);
		PersonDaoImpl stu=new PersonDaoImpl();
		stu.setDao(new PersonDaoImpl());
		stu.delete(s);
		return "success";
	}
}
