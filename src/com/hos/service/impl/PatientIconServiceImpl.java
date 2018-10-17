package com.hos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.PatientIconMapper;
import com.hos.pojo.PatientIcon;
import com.hos.service.PatientIconService;

@Service
public class PatientIconServiceImpl implements PatientIconService {
 @Autowired
	PatientIconMapper patientIconMapper;
	@Override
	public void addIcon(PatientIcon patientIcon) {
		patientIconMapper.addIcon(patientIcon);
	}

	@Override
	public void updateIcon(PatientIcon patientIcon) {
		patientIconMapper.updateIcon(patientIcon);
		
	}

	@Override
	public void delIcon(String pid) {
	patientIconMapper.delIcon(pid);
		
	}

	@Override
	public PatientIcon getIcon(String pid) {
		return patientIconMapper.getIcon(pid);
	}

	@Override
	public List<PatientIcon> selectAllIcon() {
		return patientIconMapper.selectAllIcon();
	}

}
