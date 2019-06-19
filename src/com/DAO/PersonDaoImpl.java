package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.po.Person;

public class PersonDaoImpl implements PersonDao {
	@SuppressWarnings("unused")
	private PersonDao dao;

	public void setDao(PersonDao dao) {
		this.dao = dao;
	}

	JdbcConnection jc = new JdbcConnection();

	public void add(Person s) throws Exception {
		String sql = "insert into sheet1(id,aihao,username,name,sex,qq,password) values(?,?,?,?,?,?,?)";
		Connection conn = jc.getConnection();
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, s.getId());
		ptmt.setString(2, s.getAihao());
		ptmt.setString(3, s.getUsername());
		ptmt.setString(4, s.getName());
		ptmt.setString(5, s.getSex());
		ptmt.setString(6, s.getQq());
		ptmt.setString(7, s.getPassword());
		ptmt.execute();
		ptmt.close();
		conn.close();
	};

	public void delete(Person s) throws Exception {
		String sql = "delete from sheet1 where id=?";
		Connection conn = jc.getConnection();
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, s.getId());
		ptmt.execute();
		ptmt.close();
		conn.close();
	};

	public void update(Person s) throws Exception {
		String sql = "update sheet1 set password=? where id=?";
		Connection conn = jc.getConnection();
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, s.getPassword());
		ptmt.setString(2, s.getId());
		ptmt.execute();
		ptmt.close();
		conn.close();
	};

	@SuppressWarnings("rawtypes")
	public List selectAll() throws Exception {
		String sql = "select * from sheet1";
		@SuppressWarnings("unchecked")
		List<Person> list = new ArrayList();
		Connection conn = jc.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			list.add(new Person(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getString(7)));
		}
		return list;
	};

	@SuppressWarnings("rawtypes")
	public List selectByname(String name) throws Exception {
		String sql = "select * from sheet1 where name=?";
		@SuppressWarnings("unchecked")
		List<Person> list = new ArrayList();
		Connection conn = jc.getConnection();
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, name);
		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			list.add(new Person(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getString(7)));
		}
		return list;
	};

	
	public boolean login(String custname, String pwd) throws Exception {
		Person cust = selectByNamePwd(custname, pwd);
		if (cust != null) {
			return true;
		} else {
			return false;
		}
	}

	public Person selectByNamePwd(String custname, String pwd) throws Exception {
		// TODO Auto-generated method stub
		Person cust = null;
		Connection conn = jc.getConnection();
		String sql = "select * from sheet1 where username=? and password=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, custname);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			cust = new Person(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getString(7));
		}

		return cust;
	}

}
