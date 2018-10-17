package com.hos.service;

import java.util.List;

import com.hos.pojo.PatientIcon;

public interface PatientIconService {
	//添加
		public void addIcon(PatientIcon patientIcon);
		//修改
		public void updateIcon(PatientIcon patientIcon);
		//删除
		public void delIcon(String pid);
		//根据患者编号查询一个
		public PatientIcon getIcon(String pid);
		//查询所有
		public List<PatientIcon> selectAllIcon();
}
