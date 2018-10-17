package com.hos.pojo;

public class PatientIcon {
private int id;
private String i_pid;
private String i_pname;
private String detail;
private String pic;
private String createtime;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getI_pid() {
	return i_pid;
}
public void setI_pid(String i_pid) {
	this.i_pid = i_pid;
}
public String getI_pname() {
	return i_pname;
}
public void setI_pname(String i_pname) {
	this.i_pname = i_pname;
}
public String getDetail() {
	return detail;
}
public void setDetail(String detail) {
	this.detail = detail;
}
public String getPic() {
	return pic;
}
public void setPic(String pic) {
	this.pic = pic;
}
public String getCreatetime() {
	return createtime;
}
public void setCreatetime(String createtime) {
	this.createtime = createtime;
}
@Override
public String toString() {
	return "PatientIcon [id=" + id + ", i_pid=" + i_pid + ", i_pname=" + i_pname + ", detail=" + detail + ", pic=" + pic
			+ ", createtime=" + createtime + "]";
}


}
