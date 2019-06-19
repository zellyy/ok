package com.DAO;

import java.util.List;

import com.po.Person;

public interface PersonDao {
	public void add(Person s) throws Exception;
	public void delete(Person s) throws Exception;
	public void update(Person s) throws Exception;
	@SuppressWarnings("rawtypes")
	public List selectAll() throws Exception;
	@SuppressWarnings("rawtypes")
	public List selectByname(String name) throws Exception;
	public boolean login (String username,String password) throws Exception;
	public Person selectByNamePwd(String custname, String pwd) throws Exception;
}
