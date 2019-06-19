package com.po;

public class Person {
	private String id;
	private String aihao;
	private String username;
	private String name;
	private String sex;
	private String qq;
	private String password;
	public Person() {
		
	}
	public Person(String id, String aihao, String username, String name, String sex, String qq, String password) {
		super();
		this.id = id;
		this.aihao = aihao;
		this.username = username;
		this.name = name;
		this.sex = sex;
		this.qq = qq;
		this.password = password;
	}
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
	@Override
	public String toString() {
		return "Student [���=" + id + ", �༶aihao=" + aihao + ", ѧ��=" + username + ", ����=" + name + ", �Ա�=" + sex
				+ ", QQ��=" + qq + ", ����=" + password + "]";
	}
	
}
