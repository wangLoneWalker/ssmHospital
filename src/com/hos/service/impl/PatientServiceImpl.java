package com.hos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.PatientMapper;
import com.hos.pojo.Patient;
import com.hos.service.PatientService;

@Service
public class PatientServiceImpl implements PatientService {
	@Autowired
    PatientMapper patientMapper;
	@Override
	public void addPatient(Patient patient) {
		patientMapper.addPatient(patient);
	}

	@Override
	public void updatePatient(Patient patient) {
		patientMapper.updatePatient(patient);
		
	}

	@Override
	public void delPatient(Integer id) {
		patientMapper.delPatient(id);
		
	}

	@Override
	public Patient getPatient(Integer id) {
		return patientMapper.getPatient(id);
	}

	@Override
	public List<Patient> selectAllPatient() {
		return patientMapper.selectAllPatient();
	}

}
