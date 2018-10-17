package com.hos.pojo;

public class Admin {
 private int id;
 private String a_name;
 private String a_word;
 private String a_phone;
 private String a_email;
 private String createtime;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getA_name() {
	return a_name;
}
public void setA_name(String a_name) {
	this.a_name = a_name;
}
public String getA_word() {
	return a_word;
}
public void setA_word(String a_word) {
	this.a_word = a_word;
}
public String getA_phone() {
	return a_phone;
}
public void setA_phone(String a_phone) {
	this.a_phone = a_phone;
}
public String getA_email() {
	return a_email;
}
public void setA_email(String a_email) {
	this.a_email = a_email;
}
public String getCreatetime() {
	return createtime;
}
public void setCreatetime(String createtime) {
	this.createtime = createtime;
}
@Override
public String toString() {
	return "Admin [id=" + id + ", a_name=" + a_name + ", a_word=" + a_word + ", a_phone=" + a_phone + ", a_email="
			+ a_email + ", createtime=" + createtime + "]";
}

 
}
