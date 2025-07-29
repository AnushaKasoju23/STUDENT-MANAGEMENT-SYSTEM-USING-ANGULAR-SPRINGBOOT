package com.vcube.Model;

public class RegisterModel {
private  String username;
private  String email;
private  String gender;
private Integer id;
private String branch;
private String  phonenumber;
private  String dob;
private String password;

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getBranch() {
	return branch;
}

public void setBranch(String branch) {
	this.branch = branch;
}

public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {  
    this.phonenumber = phonenumber;
}

public String getDob() {
	return dob;
}

public void setDob(String dob) {
	this.dob = dob;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

@Override
public String toString() {
	return "RegisterModel [username=" + username + ", email=" + email + ", gender=" + gender + ", id=" + id
			+ ", branch=" + branch + ", phonenumber=" + phonenumber + ", dob=" + dob + ", password=" + password + "]";
}

public RegisterModel() {
	
}
public RegisterModel(int id, String username, String phonenumber, String email, String branch, String dob, String gender, String password) {
    super();
    this.id = id;
    this.username = username;
    this.phonenumber = phonenumber;
    this.email = email;
    this.branch = branch;
    this.dob = dob;
    this.gender = gender;
    this.password = password;
}
}