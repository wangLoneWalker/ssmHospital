package com.hos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.DoctorMapper;
import com.hos.pojo.Doctor;
import com.hos.service.DoctorService;

@Service
public class DoctorServiceImpl implements DoctorService {
	@Autowired
	DoctorMapper doctorMapper;
	@Override
	public void addDoctor(Doctor doctor) {
		doctorMapper.addDoctor(doctor);
		
	}

	@Override
	public void updateDoctor(Doctor doctor) {
		doctorMapper.updateDoctor(doctor);
		
	}

	@Override
	public void delDoctor(Integer id) {
		doctorMapper.delDoctor(id);
	}

	@Override
	public List<Doctor> selectAllDoctor() {
		return doctorMapper.selectAllDoctor();
	}

	@Override
	public Doctor getDoctor(Integer id) {
		return doctorMapper.getDoctor(id);
	}

	
}
