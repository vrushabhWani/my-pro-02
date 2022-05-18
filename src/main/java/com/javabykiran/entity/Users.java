package com.javabykiran.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Users {
	@Id 
	@Column(name="username")
	String username;
	@Column(name="mobilenumber")
	String mobilenumber;
	@Column(name="emailid")
	String emailid; 
	@Column(name="dateofbirth")
	String dateofbirth;
	@Column(name="password")
	String password;
	Users(){}
	public Users(String username, String mobilenumber, String emailid, String dateofbirth, String password) {
		super();
		this.username = username;
		this.mobilenumber = mobilenumber;
		this.emailid = emailid;
		this.dateofbirth = dateofbirth;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Users [username=" + username + ", mobilenumber=" + mobilenumber + ", emailid=" + emailid
				+ ", dateofbirth=" + dateofbirth + ", password=" + password + "]";
	}
	

}
