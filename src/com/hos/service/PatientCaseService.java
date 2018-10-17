package com.hos.service;

import java.util.List;

import com.hos.pojo.PatientCase;

public interface PatientCaseService {
	//添加
		public void addCase(PatientCase patientCase);
		//修改
		public void updateCase(PatientCase patientCase);
		//删除
		public void delCase(Integer id);
		//根据患者编号查看病历
		public PatientCase getCase(String id);
		//查看
		public List<PatientCase> selectAllCase();
}
