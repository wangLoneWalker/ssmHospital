package com.hos.pojo;

public class Notice {
private int id;
private int sendid;
private String title;
private String message;
private String create_time;
private Admin admin;

public Admin getAdmin() {
	return admin;
}
public void setAdmin(Admin admin) {
	this.admin = admin;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getSendid() {
	return sendid;
}
public void setSendid(int sendid) {
	this.sendid = sendid;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getCreate_time() {
	return create_time;
}
public void setCreate_time(String create_time) {
	this.create_time = create_time;
}
@Override
public String toString() {
	return "Notice [id=" + id + ", sendid=" + sendid + ", title=" + title + ", message=" + message + ", create_time="
			+ create_time + ", admin=" + admin + "]";
}



}
