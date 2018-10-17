package com.hos.pojo;

public class PatientCase {
private int id;
//对应的患者号
private String c_pid;
//患者姓名
private String c_pname;
//患者状态
private String pstate;
//患者主治医师名字
private String p_dname;
//病历创建时间
private String pintime;
//诊断结果
private String p_result;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getC_pid() {
	return c_pid;
}
public void setC_pid(String c_pid) {
	this.c_pid = c_pid;
}
public String getC_pname() {
	return c_pname;
}
public void setC_pname(String c_pname) {
	this.c_pname = c_pname;
}
public String getPstate() {
	return pstate;
}
public void setPstate(String pstate) {
	this.pstate = pstate;
}
public String getP_dname() {
	return p_dname;
}
public void setP_dname(String p_dname) {
	this.p_dname = p_dname;
}
public String getPintime() {
	return pintime;
}
public void setPintime(String pintime) {
	this.pintime = pintime;
}
public String getP_result() {
	return p_result;
}
public void setP_result(String p_result) {
	this.p_result = p_result;
}
@Override
public String toString() {
	return "PatientCase [id=" + id + ", c_pid=" + c_pid + ", c_pname=" + c_pname + ", pstate=" + pstate + ", p_dname="
			+ p_dname + ", pintime=" + pintime + ", p_result=" + p_result + "]";
}


}
