package com.htmltoolkit;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity(name="registration")
public class Registration {
	@Id
	String emailid;
	String password;
	String name;
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
