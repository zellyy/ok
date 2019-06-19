package com.panda.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.panda.bean.Userr;


@SuppressWarnings("serial")
public class LgoinAction extends ActionSupport implements ModelDriven<Userr>{
	private Userr userr = new Userr();
	
	public Userr getUserr() {
		return userr;
	}

	public void setUserr(Userr userr) {
		this.userr = userr;
	}
	public String login1() {
		if ("admin".equals(userr.getNamee()) && "admin".equals(userr.getPasswordd())) {
			ServletActionContext.getRequest().getSession().setAttribute("userr", userr.getNamee());
			return SUCCESS;
		}
		return ERROR;
	}
	
	public Userr getModel() {
		return userr;
	}
	
}
