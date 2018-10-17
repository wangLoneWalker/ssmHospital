package com.hos.mapper;

import java.util.List;

import com.hos.pojo.PatientCase;

public interface PatientCaseMapper {
//添加
	public void addCase(PatientCase patientCase);
	//修改
	public void updateCase(PatientCase patientCase);
	//删除
	public void delCase(Integer id);
	//根据患者编号查看
	public PatientCase getCase(String c_pid);
	
	//查看
	public List<PatientCase> selectAllCase();
}
