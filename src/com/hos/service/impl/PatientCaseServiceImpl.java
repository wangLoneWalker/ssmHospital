package com.hos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.PatientCaseMapper;
import com.hos.pojo.PatientCase;
import com.hos.service.PatientCaseService;

@Service
public class PatientCaseServiceImpl implements PatientCaseService {
	@Autowired
PatientCaseMapper patientCaseMapper;
	
	@Override
	public void addCase(PatientCase patientCase) {
		patientCaseMapper.addCase(patientCase);
	}

	@Override
	public void updateCase(PatientCase patientCase) {
		patientCaseMapper.updateCase(patientCase);
		
	}

	@Override
	public void delCase(Integer id) {
		patientCaseMapper.delCase(id);
		
	}

	@Override
	public PatientCase getCase(String c_pid) {
		return patientCaseMapper.getCase(c_pid);
	}

	@Override
	public List<PatientCase> selectAllCase() {
		return patientCaseMapper.selectAllCase();
	}

}
