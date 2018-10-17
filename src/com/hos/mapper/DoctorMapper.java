package com.hos.mapper;

import java.util.List;

import com.hos.pojo.Doctor;

public interface DoctorMapper {
//添加
	public void addDoctor(Doctor doctor);
	//修改
	public void updateDoctor(Doctor doctor);
	//删除
	public void delDoctor(Integer id);
	//根据id查询
	public Doctor getDoctor(Integer id);
	//查询
	public List<Doctor> selectAllDoctor();
}
