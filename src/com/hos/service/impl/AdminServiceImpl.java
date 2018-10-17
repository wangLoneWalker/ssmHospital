package com.hos.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hos.mapper.AdminMapper;
import com.hos.pojo.Admin;
import com.hos.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
  AdminMapper adminMapper;
	
	@Override
	public Admin login(String a_name,String a_word) {
		Admin admin=adminMapper.getLogin(a_name,a_word);
		if (admin!=null) {
			admin.setA_phone(admin.getA_phone());
			return admin;
		}else {
			return null;
		}
	}
	
	@Override
	public void add(Admin admin) {
		adminMapper.add(admin);
		
	}
	@Override
	public void update(Admin admin) {
		adminMapper.update(admin);
	}

	@Override
	public void delete(Integer id) {
		adminMapper.delete(id);	
	}

	@Override
	public Admin getAdmin(Integer id) {
		return adminMapper.getAdmin(id);
	}

	@Override
	public List<Admin> selectAll() {
		return adminMapper.selectAll();
	}

	@Override
	public int count() {
		return adminMapper.count();
	}
}
