package com.hos.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hos.pojo.Patient;

@Repository
public interface PatientMapper {
//添加
	public void addPatient(Patient patient);
//修改
	public void updatePatient(Patient patient);
	//删除
	public void delPatient(Integer id);
	//根据id查询
	public Patient getPatient(Integer id);
	//查询所有
	public List<Patient> selectAllPatient();
}
