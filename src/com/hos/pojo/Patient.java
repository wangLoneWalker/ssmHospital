package com.hos.pojo;

public class Patient {
	private int id;
	private String pid;
	private String pname;
	private String psex;
	private String pold;
	private String paddress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPsex() {
		return psex;
	}
	public void setPsex(String psex) {
		this.psex = psex;
	}
	public String getPold() {
		return pold;
	}
	public void setPold(String pold) {
		this.pold = pold;
	}
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	@Override
	public String toString() {
		return "Patient [id=" + id + ", pid=" + pid + ", pname=" + pname + ", psex=" + psex + ", pold=" + pold
				+ ", paddress=" + paddress + "]";
	}
	
	
}
